package dado.app

import android.os.Bundle
import android.widget.Button
import android.widget.ImageView
import android.widget.Toast
import androidx.appcompat.app.AppCompatActivity

class MainActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)
        val rollButton: Button = findViewById(R.id.button)
        // configurar el funcionamiento del boton
        rollButton.setOnClickListener {
            //ejecuta la funcion rollDice
            rollDice()
        }

    }
    private fun rollDice() {
        val dice = Dice(6)
        // selecciona el numero obtenido al tirar los dados
        val diceRoll = dice.roll()
        //Encuentra la image a reempazar
        val diceImage: ImageView = findViewById(R.id.image1)
        val drawableResource = when (diceRoll) {
            1 -> R.drawable.dice_1
            2 -> R.drawable.dice_2
            3 -> R.drawable.dice_3
            4 -> R.drawable.dice_4
            5 -> R.drawable.dice_5
            else -> R.drawable.dice_6
        }
        // realiza los respectivos cambios al dado
        diceImage.setImageResource(drawableResource)
        // cambia el contenido de la descripcion de las imagenes
        diceImage.contentDescription = diceRoll.toString()
        // envia un mesaje corto al usuario con el valor del dado
        Toast.makeText(this, "El valor del datos es " + diceRoll, Toast.LENGTH_SHORT).show()

    }
}

class Dice(private val numSides: Int) {
    fun roll(): Int {
        return (1..numSides).random()
    }
}