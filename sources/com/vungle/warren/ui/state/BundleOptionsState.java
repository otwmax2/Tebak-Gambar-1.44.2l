package com.vungle.warren.ui.state;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class BundleOptionsState implements OptionsState, Parcelable {
    public static final Parcelable.Creator<BundleOptionsState> CREATOR = new Parcelable.Creator<BundleOptionsState>() { // from class: com.vungle.warren.ui.state.BundleOptionsState.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BundleOptionsState createFromParcel(Parcel parcel) {
            return new BundleOptionsState(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BundleOptionsState[] newArray(int i10) {
            return new BundleOptionsState[i10];
        }
    };

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private Map<String, String> f28451o = new HashMap();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private Map<String, Boolean> f28452p = new HashMap();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private Map<String, Integer> f28453q = new HashMap();

    public BundleOptionsState() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.vungle.warren.ui.state.OptionsState
    public boolean getBoolean(String str, boolean z10) {
        Boolean bool = this.f28452p.get(str);
        return bool == null ? z10 : bool.booleanValue();
    }

    @Override // com.vungle.warren.ui.state.OptionsState
    public Integer getInt(String str, int i10) {
        Integer num = this.f28453q.get(str);
        if (num != null) {
            i10 = num.intValue();
        }
        return Integer.valueOf(i10);
    }

    @Override // com.vungle.warren.ui.state.OptionsState
    public String getString(String str) {
        return this.f28451o.get(str);
    }

    @Override // com.vungle.warren.ui.state.OptionsState
    public void put(String str, String str2) {
        this.f28451o.put(str, str2);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeInt(this.f28453q.size());
        for (Map.Entry<String, Integer> entry : this.f28453q.entrySet()) {
            parcel.writeString(entry.getKey());
            parcel.writeValue(entry.getValue());
        }
        parcel.writeInt(this.f28451o.size());
        for (Map.Entry<String, String> entry2 : this.f28451o.entrySet()) {
            parcel.writeString(entry2.getKey());
            parcel.writeValue(entry2.getValue());
        }
        parcel.writeInt(this.f28452p.size());
        for (Map.Entry<String, Boolean> entry3 : this.f28452p.entrySet()) {
            parcel.writeString(entry3.getKey());
            parcel.writeValue(entry3.getValue());
        }
    }

    @Override // com.vungle.warren.ui.state.OptionsState
    public void put(String str, boolean z10) {
        this.f28452p.put(str, Boolean.valueOf(z10));
    }

    @Override // com.vungle.warren.ui.state.OptionsState
    public void put(String str, int i10) {
        this.f28453q.put(str, Integer.valueOf(i10));
    }

    protected BundleOptionsState(Parcel parcel) {
        int i10 = parcel.readInt();
        for (int i11 = 0; i11 < i10; i11++) {
            this.f28453q.put(parcel.readString(), (Integer) parcel.readValue(String.class.getClassLoader()));
        }
        int i12 = parcel.readInt();
        for (int i13 = 0; i13 < i12; i13++) {
            this.f28451o.put(parcel.readString(), (String) parcel.readValue(String.class.getClassLoader()));
        }
        int i14 = parcel.readInt();
        for (int i15 = 0; i15 < i14; i15++) {
            this.f28452p.put(parcel.readString(), (Boolean) parcel.readValue(Boolean.class.getClassLoader()));
        }
    }
}
