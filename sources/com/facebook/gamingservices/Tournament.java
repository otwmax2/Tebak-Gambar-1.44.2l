package com.facebook.gamingservices;

import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.facebook.gamingservices.internal.DateFormatter;
import com.facebook.share.model.ShareModel;
import com.facebook.share.model.ShareModelBuilder;
import java.time.ZonedDateTime;
import java.time.format.DateTimeFormatter;
import t9.m;

/* JADX INFO: compiled from: Tournament.kt */
/* JADX INFO: loaded from: classes.dex */
public final class Tournament implements ShareModel {
    public static final CREATOR CREATOR = new CREATOR(null);

    @b7.c("tournament_end_time")
    public String endTime;

    @b7.c("id")
    public final String identifier;

    @b7.c(SDKConstants.PARAM_TOURNAMENTS_PAYLOAD)
    public final String payload;

    @b7.c(SDKConstants.PARAM_TOURNAMENTS_TITLE)
    public final String title;

    /* JADX INFO: compiled from: Tournament.kt */
    public static final class Builder implements ShareModelBuilder<Tournament, Builder> {
        private String endTime;
        private ZonedDateTime expiration;
        private String identifier;
        private String payload;
        private String title;

        public Builder(String str, ZonedDateTime zonedDateTime, String str2, String str3) {
            m.e(str, "identifier");
            this.identifier = str;
            this.expiration = zonedDateTime;
            this.title = str2;
            this.payload = str3;
        }

        public static /* synthetic */ Builder copy$default(Builder builder, String str, ZonedDateTime zonedDateTime, String str2, String str3, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                str = builder.identifier;
            }
            if ((i10 & 2) != 0) {
                zonedDateTime = builder.expiration;
            }
            if ((i10 & 4) != 0) {
                str2 = builder.title;
            }
            if ((i10 & 8) != 0) {
                str3 = builder.payload;
            }
            return builder.copy(str, zonedDateTime, str2, str3);
        }

        public final String component1() {
            return this.identifier;
        }

        public final ZonedDateTime component2() {
            return this.expiration;
        }

        public final String component3() {
            return this.title;
        }

        public final String component4() {
            return this.payload;
        }

        public final Builder copy(String str, ZonedDateTime zonedDateTime, String str2, String str3) {
            m.e(str, "identifier");
            return new Builder(str, zonedDateTime, str2, str3);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Builder)) {
                return false;
            }
            Builder builder = (Builder) obj;
            return m.a(this.identifier, builder.identifier) && m.a(this.expiration, builder.expiration) && m.a(this.title, builder.title) && m.a(this.payload, builder.payload);
        }

        public final Builder expiration(ZonedDateTime zonedDateTime) {
            setExpiration(zonedDateTime);
            if (Build.VERSION.SDK_INT >= 26 && zonedDateTime != null) {
                setEndTime(zonedDateTime.format(DateTimeFormatter.ISO_DATE_TIME));
            }
            return this;
        }

        public final String getEndTime() {
            return this.endTime;
        }

        public final ZonedDateTime getExpiration() {
            return this.expiration;
        }

        public final String getIdentifier() {
            return this.identifier;
        }

        public final String getPayload() {
            return this.payload;
        }

        public final String getTitle() {
            return this.title;
        }

        public int hashCode() {
            int iHashCode = this.identifier.hashCode() * 31;
            ZonedDateTime zonedDateTime = this.expiration;
            int iHashCode2 = (iHashCode + (zonedDateTime == null ? 0 : zonedDateTime.hashCode())) * 31;
            String str = this.title;
            int iHashCode3 = (iHashCode2 + (str == null ? 0 : str.hashCode())) * 31;
            String str2 = this.payload;
            return iHashCode3 + (str2 != null ? str2.hashCode() : 0);
        }

        public final Builder identifier(String str) {
            m.e(str, "identifier");
            setIdentifier(str);
            return this;
        }

        public final Builder payload(String str) {
            setPayload(str);
            return this;
        }

        public final void setEndTime(String str) {
            this.endTime = str;
        }

        public final void setExpiration(ZonedDateTime zonedDateTime) {
            this.expiration = zonedDateTime;
        }

        public final void setIdentifier(String str) {
            m.e(str, "<set-?>");
            this.identifier = str;
        }

        public final void setPayload(String str) {
            this.payload = str;
        }

        public final void setTitle(String str) {
            this.title = str;
        }

        public final Builder title(String str) {
            setTitle(str);
            return this;
        }

        public String toString() {
            return "Builder(identifier=" + this.identifier + ", expiration=" + this.expiration + ", title=" + ((Object) this.title) + ", payload=" + ((Object) this.payload) + ')';
        }

        @Override // com.facebook.share.ShareBuilder
        public Tournament build() {
            return new Tournament(this.identifier, this.endTime, this.title, this.payload);
        }

        @Override // com.facebook.share.model.ShareModelBuilder
        public Builder readFrom(Tournament tournament) {
            Builder builderPayload = tournament == null ? null : identifier(tournament.identifier).expiration(tournament.getExpiration()).title(tournament.title).payload(tournament.payload);
            return builderPayload == null ? this : builderPayload;
        }

        public /* synthetic */ Builder(String str, ZonedDateTime zonedDateTime, String str2, String str3, int i10, t9.g gVar) {
            this(str, (i10 & 2) != 0 ? null : zonedDateTime, (i10 & 4) != 0 ? null : str2, (i10 & 8) != 0 ? null : str3);
        }
    }

    /* JADX INFO: compiled from: Tournament.kt */
    public static final class CREATOR implements Parcelable.Creator<Tournament> {
        private CREATOR() {
        }

        public /* synthetic */ CREATOR(t9.g gVar) {
            this();
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public Tournament createFromParcel(Parcel parcel) {
            m.e(parcel, "parcel");
            return new Tournament(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public Tournament[] newArray(int i10) {
            return new Tournament[i10];
        }
    }

    public Tournament(String str, String str2, String str3, String str4) {
        m.e(str, "identifier");
        this.identifier = str;
        this.endTime = str2;
        this.title = str3;
        this.payload = str4;
        setExpiration(str2 == null ? null : DateFormatter.INSTANCE.format$facebook_gamingservices_release(str2));
    }

    private final void setExpiration(ZonedDateTime zonedDateTime) {
        if (Build.VERSION.SDK_INT < 26 || zonedDateTime == null) {
            return;
        }
        this.endTime = zonedDateTime.format(DateTimeFormatter.ISO_DATE_TIME);
        setExpiration(zonedDateTime);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public final ZonedDateTime getExpiration() {
        String str = this.endTime;
        if (str == null) {
            return null;
        }
        return DateFormatter.INSTANCE.format$facebook_gamingservices_release(str);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        m.e(parcel, "out");
        parcel.writeString(this.identifier);
        parcel.writeString(this.endTime);
        parcel.writeString(this.title);
        parcel.writeString(this.payload);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Tournament(Parcel parcel) {
        this(parcel.toString(), parcel.toString(), parcel.toString(), parcel.toString());
        m.e(parcel, "parcel");
    }
}
