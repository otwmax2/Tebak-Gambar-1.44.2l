package a0;

import android.content.Context;
import android.database.Cursor;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: compiled from: ResourceCursorAdapter.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class c extends a {

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private int f14w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private int f15x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private LayoutInflater f16y;

    @Deprecated
    public c(Context context, int i10, Cursor cursor, boolean z10) {
        super(context, cursor, z10);
        this.f15x = i10;
        this.f14w = i10;
        this.f16y = (LayoutInflater) context.getSystemService("layout_inflater");
    }

    @Override // a0.a
    public View q(Context context, Cursor cursor, ViewGroup viewGroup) {
        return this.f16y.inflate(this.f15x, viewGroup, false);
    }

    @Override // a0.a
    public View r(Context context, Cursor cursor, ViewGroup viewGroup) {
        return this.f16y.inflate(this.f14w, viewGroup, false);
    }
}
