package com.facebook.gamingservices;

import android.media.Image;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.facebook.gamingservices.internal.DateFormatter;
import com.facebook.gamingservices.internal.TournamentScoreType;
import com.facebook.gamingservices.internal.TournamentSortOrder;
import com.facebook.share.model.ShareModel;
import com.facebook.share.model.ShareModelBuilder;
import java.time.Instant;
import t9.m;

/* JADX INFO: compiled from: TournamentConfig.kt */
/* JADX INFO: loaded from: classes.dex */
public final class TournamentConfig implements ShareModel {
    public static final CREATOR CREATOR = new CREATOR(null);
    private final Instant endTime;
    private final Image image;
    private final String payload;
    private final TournamentScoreType scoreType;
    private final TournamentSortOrder sortOrder;
    private final String title;

    /* JADX INFO: compiled from: TournamentConfig.kt */
    public static final class Builder implements ShareModelBuilder<TournamentConfig, Builder> {
        private Instant endTime;
        private Image image;
        private String payload;
        private TournamentScoreType scoreType;
        private TournamentSortOrder sortOrder;
        private String title;

        public final Instant getEndTime() {
            return this.endTime;
        }

        public final Image getImage() {
            return this.image;
        }

        public final String getPayload() {
            return this.payload;
        }

        public final TournamentScoreType getScoreType() {
            return this.scoreType;
        }

        public final TournamentSortOrder getSortOrder() {
            return this.sortOrder;
        }

        public final String getTitle() {
            return this.title;
        }

        public final Builder readFrom$facebook_gamingservices_release(Parcel parcel) {
            m.e(parcel, "parcel");
            return readFrom((TournamentConfig) parcel.readParcelable(TournamentConfig.class.getClassLoader()));
        }

        public final void setEndTime(Instant instant) {
            this.endTime = instant;
        }

        public final void setImage(Image image) {
            this.image = image;
        }

        public final void setPayload(String str) {
            this.payload = str;
        }

        public final void setScoreType(TournamentScoreType tournamentScoreType) {
            this.scoreType = tournamentScoreType;
        }

        public final void setSortOrder(TournamentSortOrder tournamentSortOrder) {
            this.sortOrder = tournamentSortOrder;
        }

        public final void setTitle(String str) {
            this.title = str;
        }

        public final Builder setTournamentEndTime(Instant instant) {
            m.e(instant, SDKConstants.PARAM_END_TIME);
            this.endTime = instant;
            return this;
        }

        public final Builder setTournamentImage(Image image) {
            this.image = image;
            return this;
        }

        public final Builder setTournamentPayload(String str) {
            this.payload = str;
            return this;
        }

        public final Builder setTournamentScoreType(TournamentScoreType tournamentScoreType) {
            m.e(tournamentScoreType, "scoreType");
            this.scoreType = tournamentScoreType;
            return this;
        }

        public final Builder setTournamentSortOrder(TournamentSortOrder tournamentSortOrder) {
            m.e(tournamentSortOrder, SDKConstants.PARAM_SORT_ORDER);
            this.sortOrder = tournamentSortOrder;
            return this;
        }

        public final Builder setTournamentTitle(String str) {
            this.title = str;
            return this;
        }

        @Override // com.facebook.share.ShareBuilder
        public TournamentConfig build() {
            return new TournamentConfig(this, null);
        }

        @Override // com.facebook.share.model.ShareModelBuilder
        public Builder readFrom(TournamentConfig tournamentConfig) {
            if (tournamentConfig == null) {
                return this;
            }
            TournamentSortOrder sortOrder = tournamentConfig.getSortOrder();
            if (sortOrder != null) {
                setTournamentSortOrder(sortOrder);
            }
            TournamentScoreType scoreType = tournamentConfig.getScoreType();
            if (scoreType != null) {
                setTournamentScoreType(scoreType);
            }
            Instant endTime = tournamentConfig.getEndTime();
            if (endTime != null) {
                setTournamentEndTime(endTime);
            }
            String title = tournamentConfig.getTitle();
            if (title != null) {
                setTournamentTitle(title);
            }
            setTournamentPayload(tournamentConfig.getPayload());
            return this;
        }
    }

    /* JADX INFO: compiled from: TournamentConfig.kt */
    public static final class CREATOR implements Parcelable.Creator<TournamentConfig> {
        private CREATOR() {
        }

        public /* synthetic */ CREATOR(t9.g gVar) {
            this();
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public TournamentConfig createFromParcel(Parcel parcel) {
            m.e(parcel, "parcel");
            return new TournamentConfig(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public TournamentConfig[] newArray(int i10) {
            return new TournamentConfig[i10];
        }
    }

    private TournamentConfig(Builder builder) {
        this.title = builder.getTitle();
        this.sortOrder = builder.getSortOrder();
        this.scoreType = builder.getScoreType();
        this.endTime = builder.getEndTime();
        this.image = builder.getImage();
        this.payload = builder.getPayload();
    }

    public /* synthetic */ TournamentConfig(Builder builder, t9.g gVar) {
        this(builder);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public final Instant getEndTime() {
        return this.endTime;
    }

    public final Image getImage() {
        return this.image;
    }

    public final String getPayload() {
        return this.payload;
    }

    public final TournamentScoreType getScoreType() {
        return this.scoreType;
    }

    public final TournamentSortOrder getSortOrder() {
        return this.sortOrder;
    }

    public final String getTitle() {
        return this.title;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        m.e(parcel, "out");
        parcel.writeString(String.valueOf(this.sortOrder));
        parcel.writeString(String.valueOf(this.scoreType));
        parcel.writeString(String.valueOf(this.endTime));
        parcel.writeString(this.title);
        parcel.writeString(this.payload);
    }

    public TournamentConfig(Parcel parcel) {
        TournamentSortOrder tournamentSortOrder;
        TournamentScoreType tournamentScoreType;
        String string;
        m.e(parcel, "parcel");
        this.title = parcel.readString();
        TournamentSortOrder[] tournamentSortOrderArrValuesCustom = TournamentSortOrder.valuesCustom();
        int length = tournamentSortOrderArrValuesCustom.length;
        int i10 = 0;
        int i11 = 0;
        while (true) {
            if (i11 >= length) {
                tournamentSortOrder = null;
                break;
            }
            tournamentSortOrder = tournamentSortOrderArrValuesCustom[i11];
            if (m.a(tournamentSortOrder.name(), parcel.readString())) {
                break;
            } else {
                i11++;
            }
        }
        this.sortOrder = tournamentSortOrder;
        TournamentScoreType[] tournamentScoreTypeArrValuesCustom = TournamentScoreType.valuesCustom();
        int length2 = tournamentScoreTypeArrValuesCustom.length;
        while (true) {
            if (i10 >= length2) {
                tournamentScoreType = null;
                break;
            }
            tournamentScoreType = tournamentScoreTypeArrValuesCustom[i10];
            if (m.a(tournamentScoreType.name(), parcel.readString())) {
                break;
            } else {
                i10++;
            }
        }
        this.scoreType = tournamentScoreType;
        this.endTime = (Build.VERSION.SDK_INT < 26 || (string = parcel.readString()) == null) ? null : Instant.from(DateFormatter.INSTANCE.format$facebook_gamingservices_release(string));
        this.payload = parcel.readString();
        this.image = null;
    }
}
