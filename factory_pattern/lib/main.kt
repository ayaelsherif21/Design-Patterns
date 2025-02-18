abstract class Shape {
    fun revealMe()
}

class Circle : Shape {
    override fun revealMe() {
        println("You chose to print circle")
    }
}

class Rectangle : Shape {
    override fun revealMe() {
        println("You chose to print rectangle")
    }
}

class Square : Shape {
    override fun revealMe() {
        println("You chose to print square")
    }
}

class ShapeFactory {
    companion object {
        fun getShape(shapeType: String): Shape? {
            return when (shapeType.lowercase()) {
                "circle" -> Circle()
                "rectangle" -> Rectangle()
                "square" -> Square()
                else -> null
            }
        }
    }
}

fun main() {
    val shapeNames = listOf("circle", "rectangle", "square")
    
    shapeNames.forEach { shapeName ->
        val shape = ShapeFactory.getShape(shapeName)
        shape?.revealMe()
    }
}
