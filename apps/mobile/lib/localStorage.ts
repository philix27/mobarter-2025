export class LocalStorage<GET> {
  get(key: string) {
    const res = localStorage.getItem(key);

    return res ? (JSON.parse(res) as GET) : undefined;
  }

  set(key: string, data: any) {
    localStorage.setItem(key, JSON.stringify(data));
  }
}
