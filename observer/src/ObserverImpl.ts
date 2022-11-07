import { Observer } from "./interfaces/Observer";
import { DisplayElement } from "./interfaces/DisplayElement";

export class ObserverImpl implements Observer, DisplayElement {
    private _data: string = "";
    private _elements: HTMLTextAreaElement[];

    public constructor(elements: HTMLTextAreaElement[]) {
        this._elements = elements;
    }

    public update(data: string): void {
        this._data = data;
        this.display();
    }

    public display(): void {
        this._elements.forEach(element => {
            element.value = this._data;
        });
    }
    
    public get getData(): string {
        return this._data;
    }
}
