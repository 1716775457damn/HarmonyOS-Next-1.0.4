@Entry
@Component
struct Index {
  @State arrayResults: string[] = []

  aboutToAppear() {
    // 在组件创建时执行所有数组操作示例
    this.defineArrayExample()
    this.arrayAccessExample()
    this.arrayModifyExample()
    this.arrayAddExample()
    this.arrayDeleteExample()
    this.arraySpliceExample()
  }

  build() {
    Column() {
      // 1. 定义数组示例
      Text('数组操作示例').fontSize(24).margin(10).fontWeight(FontWeight.Bold)
      
      List() {
        ForEach(this.arrayResults, (result: string) => {
          ListItem() {
            Text(result)
              .fontSize(16)
              .margin(5)
              .padding(10)
              .backgroundColor('#f5f5f5')
              .width('100%')
          }
        })
      }
      .width('100%')
      .padding(10)
    }
  }

  private defineArrayExample() {
    let names: string[] = ['小明', '小红', '小刚']
    this.arrayResults.push(`1. 定义数组: ${JSON.stringify(names)}`)
  }

  private arrayAccessExample() {
    let names: string[] = ['小明', '小红', '小刚']
    this.arrayResults.push(`2. 数组取值: ${names[1]}`)
    this.arrayResults.push(`   数组长度: ${names.length}`)
  }

  private arrayModifyExample() {
    let names: string[] = ['小明', '小红', '小刚']
    names[2] = '小李'
    this.arrayResults.push(`3. 修改数组: ${JSON.stringify(names)}`)
  }

  private arrayAddExample() {
    let songs: string[] = ['遥远的她', '岁月神偷', '平凡之路']
    songs.unshift('夜空中最亮的星')
    this.arrayResults.push(`4. 数组添加-unshift后: ${JSON.stringify(songs)}`)

    songs.push('岁月如歌', '匆匆那年')
    this.arrayResults.push(`   数组添加-push后: ${JSON.stringify(songs)}`)
  }

  private arrayDeleteExample() {
    let songs: string[] = ['遥远的她', '岁月神偷', '平凡之路']
    let removed = songs.shift()
    this.arrayResults.push(`5. 删除第一个元素: ${removed}`)
    this.arrayResults.push(`   shift后的数组: ${JSON.stringify(songs)}`)

    songs.pop()
    this.arrayResults.push(`   pop后的数组: ${JSON.stringify(songs)}`)
  }

  private arraySpliceExample() {
    let songs: string[] = ['遥远的她', '岁月神偷', '平凡之路', '突然好想你', '小幸运']
    songs.splice(2, 2)
    this.arrayResults.push(`6. splice删除后: ${JSON.stringify(songs)}`)

    songs.splice(1, 0, '演员')
    this.arrayResults.push(`   splice插入后: ${JSON.stringify(songs)}`)

    songs.splice(1, 1, '遥不可及')
    this.arrayResults.push(`   splice替换后: ${JSON.stringify(songs)}`)
  }
}

