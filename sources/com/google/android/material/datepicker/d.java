package com.google.android.material.datepicker;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcelable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import java.util.Collection;

/* JADX INFO: compiled from: DateSelector.java */
/* JADX INFO: loaded from: classes2.dex */
public interface d<S> extends Parcelable {
    boolean B2();

    View N1(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle, a aVar, o<S> oVar);

    Collection<Long> S2();

    S d3();

    String m0(Context context);

    int q2(Context context);

    Collection<androidx.core.util.d<Long, Long>> t0();

    void w3(long j10);
}
