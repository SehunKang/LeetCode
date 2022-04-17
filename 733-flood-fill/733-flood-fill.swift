class Solution {
    
    private func flood(image: inout [[Int]], sr: Int, sc: Int, newColor: Int, srcColor: Int) {
        print(image, sr, sc, newColor, srcColor)
        if image[sr][sc] != srcColor { return }
        if image[sr][sc] == newColor { return}
        
        image[sr][sc] = newColor
        
        if sr != 0 { flood(image: &image, sr: sr - 1, sc: sc, newColor: newColor, srcColor: srcColor) }
        if sr + 1 != image.count {flood(image: &image, sr: sr + 1, sc: sc, newColor: newColor, srcColor: srcColor)}
        if sc != 0 { flood(image: &image, sr: sr, sc: sc - 1, newColor: newColor, srcColor: srcColor)}
        if sc + 1 != image[0].count { flood(image: &image, sr: sr, sc: sc + 1, newColor: newColor, srcColor: srcColor)}

    }
    
    func floodFill(_ image: [[Int]], _ sr: Int, _ sc: Int, _ newColor: Int) -> [[Int]] {
        var image = image
        flood(image: &image, sr: sr, sc: sc, newColor: newColor, srcColor: image[sr][sc])
        return image
    }
}
