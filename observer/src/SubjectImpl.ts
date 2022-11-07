import { Subject } from "./interfaces/Subject";
import { Observer } from "./interfaces/Observer";

export class SubjectImpl implements Subject {
    private _data: string;
    private _observers: Observer[] = [];

    public constructor(data: string) {
        this._data = data;
    }

    public addObserver(observer: Observer) {
        this._observers.push(observer);
    }

    public removeObserver(observer: Observer): void {
        this._observers.splice(this._observers.indexOf(observer));
    }

    public notifyObservers(): void {
        this._observers.forEach(observer => {
            observer.update(this._data);
        });
    }

    public get getData(): string {
        return this._data;
    }

    public set setData(data: string) {
        this._data = data;
    }
}
