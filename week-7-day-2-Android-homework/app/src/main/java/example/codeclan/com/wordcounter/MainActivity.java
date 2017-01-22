package example.codeclan.com.wordcounter;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;

public class MainActivity extends AppCompatActivity {

    EditText editText;
    TextView textView;
    Button buttonWordCount;
    WordCounter wordCounter;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        editText = (EditText)findViewById(R.id.text_to_scan);
        buttonWordCount = (Button)findViewById(R.id.button_scan);
        textView = (TextView)findViewById(R.id.text_result);

        wordCounter = new WordCounter();

        buttonWordCount.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                String textToScan = editText.getText().toString();

                WordCounter wordCounter = new WordCounter();
                int numberOfWords = wordCounter.getCount(textToScan);
                textView.setText("There are " + Integer.toString(numberOfWords) + " words");
            }
        });
    }
}
