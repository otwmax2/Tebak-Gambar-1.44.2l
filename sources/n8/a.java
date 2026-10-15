package n8;

import com.tebakgambar.model.Level;
import com.tebakgambar.model.LevelWithVersioning;
import com.tebakgambar.model.Versioning;
import java.util.List;

/* JADX INFO: compiled from: LevelDao.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class a {
    public abstract void a();

    public abstract List<Level> b();

    public abstract Level c(int i10);

    public abstract LevelWithVersioning d(int i10);

    public abstract List<LevelWithVersioning> e();

    public abstract List<Level> f();

    public void g(List<Level> list) {
        a();
        h(list);
        j(Versioning.getVersionings(list));
    }

    public abstract void h(List<Level> list);

    public void i(List<Level> list) {
        h(list);
        j(Versioning.getOfflineVersionings(list));
    }

    public abstract void j(List<Versioning> list);

    public abstract void k(Versioning versioning);
}
