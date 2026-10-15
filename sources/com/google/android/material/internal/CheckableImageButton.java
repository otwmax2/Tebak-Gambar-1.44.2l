package com.google.android.material.internal;

import android.R;
import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.widget.Checkable;
import android.widget.ImageButton;
import androidx.appcompat.widget.o;
import androidx.core.view.a0;

/* JADX INFO: loaded from: classes2.dex */
public class CheckableImageButton extends o implements Checkable {

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static final int[] f25493u = {R.attr.state_checked};

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f25494r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private boolean f25495s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private boolean f25496t;

    class a extends androidx.core.view.a {
        a() {
        }

        @Override // androidx.core.view.a
        public void f(View view, AccessibilityEvent accessibilityEvent) {
            super.f(view, accessibilityEvent);
            accessibilityEvent.setChecked(CheckableImageButton.this.isChecked());
        }

        @Override // androidx.core.view.a
        public void g(View view, androidx.core.view.accessibility.c cVar) {
            super.g(view, cVar);
            cVar.V(CheckableImageButton.this.a());
            cVar.W(CheckableImageButton.this.isChecked());
        }
    }

    static class b extends b0.a {
        public static final Parcelable.Creator<b> CREATOR = new a();

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        boolean f25498q;

        static class a implements Parcelable.ClassLoaderCreator<b> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public b createFromParcel(Parcel parcel) {
                return new b(parcel, null);
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public b createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new b(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public b[] newArray(int i10) {
                return new b[i10];
            }
        }

        public b(Parcelable parcelable) {
            super(parcelable);
        }

        private void t(Parcel parcel) {
            this.f25498q = parcel.readInt() == 1;
        }

        @Override // b0.a, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeInt(this.f25498q ? 1 : 0);
        }

        public b(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            t(parcel);
        }
    }

    public CheckableImageButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, f.a.C);
    }

    public boolean a() {
        return this.f25495s;
    }

    @Override // android.widget.Checkable
    public boolean isChecked() {
        return this.f25494r;
    }

    @Override // android.widget.ImageView, android.view.View
    public int[] onCreateDrawableState(int i10) {
        if (!this.f25494r) {
            return super.onCreateDrawableState(i10);
        }
        int[] iArr = f25493u;
        return ImageButton.mergeDrawableStates(super.onCreateDrawableState(i10 + iArr.length), iArr);
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof b)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        b bVar = (b) parcelable;
        super.onRestoreInstanceState(bVar.h());
        setChecked(bVar.f25498q);
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        b bVar = new b(super.onSaveInstanceState());
        bVar.f25498q = this.f25494r;
        return bVar;
    }

    public void setCheckable(boolean z10) {
        if (this.f25495s != z10) {
            this.f25495s = z10;
            sendAccessibilityEvent(0);
        }
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean z10) {
        if (!this.f25495s || this.f25494r == z10) {
            return;
        }
        this.f25494r = z10;
        refreshDrawableState();
        sendAccessibilityEvent(2048);
    }

    public void setPressable(boolean z10) {
        this.f25496t = z10;
    }

    @Override // android.view.View
    public void setPressed(boolean z10) {
        if (this.f25496t) {
            super.setPressed(z10);
        }
    }

    @Override // android.widget.Checkable
    public void toggle() {
        setChecked(!this.f25494r);
    }

    public CheckableImageButton(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f25495s = true;
        this.f25496t = true;
        a0.q0(this, new a());
    }
}
