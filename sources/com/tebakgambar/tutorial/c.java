package com.tebakgambar.tutorial;

import android.content.Context;
import android.graphics.Color;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import com.tebakgambar.R;
import com.tebakgambar.component.CustomTextView;
import java.util.ArrayList;

/* JADX INFO: compiled from: ClueEventTutorialAdapter.java */
/* JADX INFO: loaded from: classes2.dex */
public class c extends ArrayAdapter<String> {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private Context f27242o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private Integer f27243p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private ArrayList<String> f27244q;

    /* JADX INFO: compiled from: ClueEventTutorialAdapter.java */
    static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        CustomTextView f27245a;

        a() {
        }
    }

    public c(Context context, int i10, ArrayList<String> arrayList) {
        super(context, i10, arrayList);
        this.f27242o = context;
        this.f27243p = Integer.valueOf(i10);
        this.f27244q = arrayList;
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public View getView(int i10, View view, ViewGroup viewGroup) {
        a aVar;
        String str = this.f27244q.get(i10);
        if (view == null) {
            view = ((LayoutInflater) this.f27242o.getSystemService("layout_inflater")).inflate(this.f27243p.intValue(), viewGroup, false);
            aVar = new a();
            aVar.f27245a = (CustomTextView) view.findViewById(R.id.textViewRow);
            view.setTag(aVar);
        } else {
            aVar = (a) view.getTag();
        }
        aVar.f27245a.setTextColor(Color.parseColor("#FFFFFF"));
        aVar.f27245a.setText(str);
        return view;
    }
}
