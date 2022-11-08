import { Observer } from "./interfaces/Observer";
import { Subject } from "./interfaces/Subject";

export class ObserverImpl implements Observer {
    private _subjects: Subject[];
    private _textArea: HTMLTextAreaElement;

    public constructor(subjects: Subject[], textArea: HTMLTextAreaElement) {
        this._subjects = subjects;
        subjects.forEach(subject => {
            subject.addObserver(this);
        });
        this._textArea = textArea;
    }

    public update(data: string): void {
        this._textArea.value = data;
    }
    
    public get getState(): string {
        return this._textArea.value;
    }
    
    public get getSubjects(): Subject[] {
        return this._subjects;
    }
}
