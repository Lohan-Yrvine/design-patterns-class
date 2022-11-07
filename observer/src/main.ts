import { SubjectImpl } from "./SubjectImpl";
import { ObserverImpl } from "./ObserverImpl";

const text1 = document.getElementById("text1") as HTMLTextAreaElement;
const text2 = document.getElementById("text2") as HTMLTextAreaElement;
const text3 = document.getElementById("text3") as HTMLTextAreaElement;

const subject1 = new SubjectImpl(text1.value);
const subject2 = new SubjectImpl(text2.value);
const subject3 = new SubjectImpl(text3.value);

const observer1 = new ObserverImpl([ text2, text3 ]);
const observer2 = new ObserverImpl([ text1, text3 ]);
const observer3 = new ObserverImpl([ text1, text2 ]);

subject1.addObserver(observer2);
subject1.addObserver(observer3);

subject2.addObserver(observer1);
subject2.addObserver(observer3);

subject3.addObserver(observer1);
subject3.addObserver(observer2);

const button1 = document.getElementById("notify1") as HTMLInputElement;
const button2 = document.getElementById("notify2") as HTMLInputElement;
const button3 = document.getElementById("notify3") as HTMLInputElement;

button1.onclick = (() => {
    subject1.setData = text1.value;
    subject1.notifyObservers();
});

button2.onclick = (() => {
    subject2.setData = text2.value;
    subject2.notifyObservers();
});

button3.onclick = (() => {
    subject3.setData = text3.value;
    subject3.notifyObservers();
});
