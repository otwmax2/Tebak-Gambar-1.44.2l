package com.google.android.gms.games.event;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.apps.common.proguard.UsedByReflection;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.games.Player;
import com.google.android.gms.games.PlayerEntity;
import com.google.android.gms.games.internal.zzb;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
/* JADX INFO: loaded from: classes.dex */
@UsedByReflection("GamesGmsClientImpl.java")
@SafeParcelable.Class
@SafeParcelable.Reserved
public final class EventEntity extends zzb implements Event {
    public static final Parcelable.Creator<EventEntity> CREATOR = new zza();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    private final String f8035o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SafeParcelable.Field
    private final String f8036p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @SafeParcelable.Field
    private final String f8037q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @SafeParcelable.Field
    private final Uri f8038r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @SafeParcelable.Field
    private final String f8039s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @SafeParcelable.Field
    private final PlayerEntity f8040t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @SafeParcelable.Field
    private final long f8041u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @SafeParcelable.Field
    private final String f8042v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    @SafeParcelable.Field
    private final boolean f8043w;

    public EventEntity(Event event) {
        this.f8035o = event.v2();
        this.f8036p = event.getName();
        this.f8037q = event.getDescription();
        this.f8038r = event.g();
        this.f8039s = event.getIconImageUrl();
        this.f8040t = (PlayerEntity) event.n0().p3();
        this.f8041u = event.getValue();
        this.f8042v = event.F3();
        this.f8043w = event.isVisible();
    }

    static int V3(Event event) {
        return Objects.c(event.v2(), event.getName(), event.getDescription(), event.g(), event.getIconImageUrl(), event.n0(), Long.valueOf(event.getValue()), event.F3(), Boolean.valueOf(event.isVisible()));
    }

    static boolean W3(Event event, Object obj) {
        if (!(obj instanceof Event)) {
            return false;
        }
        if (event == obj) {
            return true;
        }
        Event event2 = (Event) obj;
        return Objects.b(event2.v2(), event.v2()) && Objects.b(event2.getName(), event.getName()) && Objects.b(event2.getDescription(), event.getDescription()) && Objects.b(event2.g(), event.g()) && Objects.b(event2.getIconImageUrl(), event.getIconImageUrl()) && Objects.b(event2.n0(), event.n0()) && Objects.b(Long.valueOf(event2.getValue()), Long.valueOf(event.getValue())) && Objects.b(event2.F3(), event.F3()) && Objects.b(Boolean.valueOf(event2.isVisible()), Boolean.valueOf(event.isVisible()));
    }

    static String X3(Event event) {
        return Objects.d(event).a("Id", event.v2()).a("Name", event.getName()).a("Description", event.getDescription()).a("IconImageUri", event.g()).a("IconImageUrl", event.getIconImageUrl()).a("Player", event.n0()).a("Value", Long.valueOf(event.getValue())).a("FormattedValue", event.F3()).a("isVisible", Boolean.valueOf(event.isVisible())).toString();
    }

    @Override // com.google.android.gms.games.event.Event
    public final String F3() {
        return this.f8042v;
    }

    public final boolean equals(Object obj) {
        return W3(this, obj);
    }

    @Override // com.google.android.gms.games.event.Event
    public final Uri g() {
        return this.f8038r;
    }

    @Override // com.google.android.gms.games.event.Event
    public final String getDescription() {
        return this.f8037q;
    }

    @Override // com.google.android.gms.games.event.Event
    public final String getIconImageUrl() {
        return this.f8039s;
    }

    @Override // com.google.android.gms.games.event.Event
    public final String getName() {
        return this.f8036p;
    }

    @Override // com.google.android.gms.games.event.Event
    public final long getValue() {
        return this.f8041u;
    }

    public final int hashCode() {
        return V3(this);
    }

    @Override // com.google.android.gms.games.event.Event
    public final boolean isVisible() {
        return this.f8043w;
    }

    @Override // com.google.android.gms.games.event.Event
    public final Player n0() {
        return this.f8040t;
    }

    public final String toString() {
        return X3(this);
    }

    @Override // com.google.android.gms.games.event.Event
    public final String v2() {
        return this.f8035o;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.t(parcel, 1, v2(), false);
        SafeParcelWriter.t(parcel, 2, getName(), false);
        SafeParcelWriter.t(parcel, 3, getDescription(), false);
        SafeParcelWriter.s(parcel, 4, g(), i10, false);
        SafeParcelWriter.t(parcel, 5, getIconImageUrl(), false);
        SafeParcelWriter.s(parcel, 6, n0(), i10, false);
        SafeParcelWriter.p(parcel, 7, getValue());
        SafeParcelWriter.t(parcel, 8, F3(), false);
        SafeParcelWriter.c(parcel, 9, isVisible());
        SafeParcelWriter.b(parcel, iA);
    }

    @SafeParcelable.Constructor
    EventEntity(@SafeParcelable.Param String str, @SafeParcelable.Param String str2, @SafeParcelable.Param String str3, @SafeParcelable.Param Uri uri, @SafeParcelable.Param String str4, @SafeParcelable.Param Player player, @SafeParcelable.Param long j10, @SafeParcelable.Param String str5, @SafeParcelable.Param boolean z10) {
        this.f8035o = str;
        this.f8036p = str2;
        this.f8037q = str3;
        this.f8038r = uri;
        this.f8039s = str4;
        this.f8040t = new PlayerEntity(player);
        this.f8041u = j10;
        this.f8042v = str5;
        this.f8043w = z10;
    }
}
