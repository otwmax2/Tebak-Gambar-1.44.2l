package com.google.android.gms.games.event;

import android.net.Uri;
import android.os.Parcel;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.google.android.gms.common.data.DataBufferRef;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.games.Player;
import com.google.android.gms.games.PlayerRef;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class EventRef extends DataBufferRef implements Event {
    EventRef(DataHolder dataHolder, int i10) {
        super(dataHolder, i10);
    }

    @Override // com.google.android.gms.games.event.Event
    public final String F3() {
        return x("formatted_value");
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // com.google.android.gms.common.data.DataBufferRef
    public final boolean equals(Object obj) {
        return EventEntity.W3(this, obj);
    }

    @Override // com.google.android.gms.games.event.Event
    public final Uri g() {
        return A("icon_image_uri");
    }

    @Override // com.google.android.gms.games.event.Event
    public final String getDescription() {
        return x("description");
    }

    @Override // com.google.android.gms.games.event.Event
    public final String getIconImageUrl() {
        return x("icon_image_url");
    }

    @Override // com.google.android.gms.games.event.Event
    public final String getName() {
        return x("name");
    }

    @Override // com.google.android.gms.games.event.Event
    public final long getValue() {
        return w(SDKConstants.PARAM_VALUE);
    }

    @Override // com.google.android.gms.common.data.DataBufferRef
    public final int hashCode() {
        return EventEntity.V3(this);
    }

    @Override // com.google.android.gms.games.event.Event
    public final boolean isVisible() {
        return h(ViewHierarchyConstants.DIMENSION_VISIBILITY_KEY);
    }

    @Override // com.google.android.gms.games.event.Event
    public final Player n0() {
        return new PlayerRef(this.f7310o, this.f7311p);
    }

    @Override // com.google.android.gms.common.data.Freezable
    public final /* synthetic */ Event p3() {
        return new EventEntity(this);
    }

    public final String toString() {
        return EventEntity.X3(this);
    }

    @Override // com.google.android.gms.games.event.Event
    public final String v2() {
        return x("external_event_id");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        ((EventEntity) ((Event) p3())).writeToParcel(parcel, i10);
    }
}
