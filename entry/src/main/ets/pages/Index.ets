//数组的基本操作
//1. 定义数组
@Entry
@Component
struct Index {
  build() {
    let names: string[] = ['小明', '小红', '小刚'];
    console.log('整个数组', names);
  }
}

///////////////////////////////////////////////////////////////
//2. 数组取值
@Entry
@Component
struct Index {
  build() {
    let names: string[] = ['小明', '小红', '小刚'];
    console.log('数组取值', names[1]); // 输出小红
    console.log('数组长度', names.length); // 输出数组的长度
  }
}
//3. 数组修改
@Entry
@Component
struct Index {
  build() {
    let names: string[] = ['小明', '小红', '小刚'];
    names[2] = '小李';
    console.log('修改数组', names); // 输出修改后的数组
  }
}


////////////////////////////////////////////
//数组的添加和删除
//添加元素
@Entry
@Component
struct Index {
  build() {
    let songs: string[] = ['遥远的她', '岁月神偷', '平凡之路'];
    songs.unshift('夜空中最亮的星'); // 在开头新增
    console.log('返回数组长度', songs.length); // 输出操作后的数组长度
    console.log('数组songs', songs);

    songs.push('岁月如歌', '匆匆那年'); // 在结尾新增
    console.log('数组', songs);
  }
}


///////////////////////////////////////////////////////////
//删除元素
@Entry
@Component
struct Index {
  build() {
    let songs: string[] = ['遥远的她', '岁月神偷', '平凡之路'];
    console.log('返回删除的项', songs.shift()); // 删除并输出第一个元素
    console.log('数组', songs);

    songs.pop(); // 删除最后一个元素
    console.log('数组', songs);
  }
}

///////////////////////////////////////////
//使用 splice 方法
@Entry
@Component
struct Index {
  build() {
    let songs: string[] = ['遥远的她', '岁月神偷', '平凡之路', '突然好想你', '小幸运'];
    songs.splice(2, 2); // 删除从索引2开始的两个元素
    console.log('数组songs', songs);

    songs.splice(1, 0, '演员'); // 在索引1的位置新增元素
    console.log('数组songs', songs);

    songs.splice(1, 1, '遥不可及'); // 删除索引1的元素，并替换为'遥不可及'
    console.log('数组songs', songs);
  }
}

