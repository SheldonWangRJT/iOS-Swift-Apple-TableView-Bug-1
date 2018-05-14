# iOS-Swift-Apple-TableView-Bug-1
## This project is aim to demo a UITableView that is not yet fixed until iOS 11.3 in Xcode 9.3. When you face this in your project, just don't panic, it is **not your fault**.

### This is the bug - misplacement of table view cell after cells are deleted

![Bug demo](https://github.com/SheldonWangRJT/iOS-Swift-Apple-TableView-Bug-1/blob/master/demo.gif)

### To reproduce 

- Create a table view
- Scroll your table and make the first cell on the top edge of the screen partiall covered
- Delete cell other than the first one
- Drag the first cell to your left hand side to show **"delete" button**
- Drag the first cell to the bottom direction and the cell will be misplaced!

### Note: I have already reported this bug to Apple, but no response yet.
