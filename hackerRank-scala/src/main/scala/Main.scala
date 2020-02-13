import java.util.Scanner
object Main extends App{
  import scala.io.StdIn.readLine
  val sc = new Scanner(System.in)
  val N = sc.nextInt
  val arr = readLine
  var arr = Array()
  for(i <- (0 to N - 1)){
    arr[i] = readLine()
  }
  println(arr)
}