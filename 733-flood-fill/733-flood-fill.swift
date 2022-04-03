class Solution {

    private func flood(_ image: inout [[Int]], position: [Int], srcColor: Int , destColor: Int) {
        if image[position[0]][position[1]] != srcColor { return }
        if image[position[0]][position[1]] == destColor { return }
        image[position[0]][position[1]] = destColor
        if position[0] != 0 {
            flood(&image, position: [position[0] - 1, position[1]], srcColor: srcColor, destColor: destColor)
        }
        if position[0] != image.count - 1 {
            flood(&image, position: [position[0] + 1, position[1]], srcColor: srcColor, destColor: destColor)
        }
        if position[1] != 0 {
            flood(&image, position: [position[0], position[1] - 1], srcColor: srcColor, destColor: destColor)
        }
        if position[1] != image[0].count - 1 {
            
            flood(&image, position: [position[0], position[1] + 1], srcColor: srcColor, destColor: destColor)
        }
    }

    func floodFill(_ image: [[Int]], _ sr: Int, _ sc: Int, _ newColor: Int) -> [[Int]] {
        var image = image
        flood(&image, position: [sr, sc], srcColor: image[sr][sc], destColor: newColor)
        return image
    }
}