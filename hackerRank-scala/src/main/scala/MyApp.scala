object Myapp {
  def main(args :Array[String]) :Unit = {
    val input = new java.util.Scanner(System.in)
    val n = input.nextInt
    val list = List.fill(n)(input.nextInt)
    println(list.sum)
  }
}