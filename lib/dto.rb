class TransformData 
  def transform(transfers, users, accounts, likes)
    eligible_transfers = transfers.select{|t| t[:failedAt] == nil}
    eligible_transfers.each do |transfer|
      originAccount = accounts.find{|a| a[:id] == transfer[:originAccount]}
      originUser = users.find{|u| u[:id] == originAccount[:user]}
      transfer[:originUserName] = originUser[:firstName] +" "+ originUser[:lastName]

      targetAccount = accounts.find{|a| a[:id] == transfer[:targetAccount]}
      targetUser = users.find{|u| u[:id] == targetAccount[:user]}
      transfer[:targetUserName] = targetUser[:firstName] +" "+ targetUser[:lastName]
      

      likesCount = likes.select{|l| l[:transfer] == transfer[:id]}
      transfer[:likesCount] = likesCount.length
    end
      eligible_transfers.each do |transfer|
        transfer.delete(:id)
        transfer.delete(:status)
        transfer.delete(:completedAt)
        transfer.delete(:initiatedAt)
        transfer.delete(:originAccount)
        transfer.delete(:targetAccount)
        transfer.delete(:failedAt)
      end
        eligible_transfers
  end
end