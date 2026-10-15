###### Class com.facebook.gamingservices.TournamentConfig (com.facebook.gamingservices.TournamentConfig)
.class public final Lcom/facebook/gamingservices/TournamentConfig;
.super Ljava/lang/Object;
.source "TournamentConfig.kt"

# interfaces
.implements Lcom/facebook/share/model/ShareModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/gamingservices/TournamentConfig$Builder;,
        Lcom/facebook/gamingservices/TournamentConfig$CREATOR;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/facebook/gamingservices/TournamentConfig$CREATOR;


# instance fields
.field private final endTime:Ljava/time/Instant;

.field private final image:Landroid/media/Image;

.field private final payload:Ljava/lang/String;

.field private final scoreType:Lcom/facebook/gamingservices/internal/TournamentScoreType;

.field private final sortOrder:Lcom/facebook/gamingservices/internal/TournamentSortOrder;

.field private final title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/facebook/gamingservices/TournamentConfig$CREATOR;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/gamingservices/TournamentConfig$CREATOR;-><init>(Lt9/g;)V

    sput-object v0, Lcom/facebook/gamingservices/TournamentConfig;->CREATOR:Lcom/facebook/gamingservices/TournamentConfig$CREATOR;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 10

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/gamingservices/TournamentConfig;->title:Ljava/lang/String;

    .line 10
    invoke-static {}, Lcom/facebook/gamingservices/internal/TournamentSortOrder;->values()[Lcom/facebook/gamingservices/internal/TournamentSortOrder;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_15
    const/4 v4, 0x0

    if-ge v3, v1, :cond_2c

    aget-object v5, v0, v3

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lt9/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_29

    goto :goto_2d

    :cond_29
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    :cond_2c
    move-object v5, v4

    :goto_2d
    iput-object v5, p0, Lcom/facebook/gamingservices/TournamentConfig;->sortOrder:Lcom/facebook/gamingservices/internal/TournamentSortOrder;

    .line 11
    invoke-static {}, Lcom/facebook/gamingservices/internal/TournamentScoreType;->values()[Lcom/facebook/gamingservices/internal/TournamentScoreType;

    move-result-object v0

    array-length v1, v0

    :goto_34
    if-ge v2, v1, :cond_4a

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lt9/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_47

    goto :goto_4b

    :cond_47
    add-int/lit8 v2, v2, 0x1

    goto :goto_34

    :cond_4a
    move-object v3, v4

    :goto_4b
    iput-object v3, p0, Lcom/facebook/gamingservices/TournamentConfig;->scoreType:Lcom/facebook/gamingservices/internal/TournamentScoreType;

    .line 12
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_65

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5a

    goto :goto_65

    .line 14
    :cond_5a
    sget-object v1, Lcom/facebook/gamingservices/internal/DateFormatter;->INSTANCE:Lcom/facebook/gamingservices/internal/DateFormatter;

    invoke-virtual {v1, v0}, Lcom/facebook/gamingservices/internal/DateFormatter;->format$facebook_gamingservices_release(Ljava/lang/String;)Ljava/time/ZonedDateTime;

    move-result-object v0

    invoke-static {v0}, Ljava/time/Instant;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/Instant;

    move-result-object v0

    goto :goto_66

    :cond_65
    :goto_65
    move-object v0, v4

    .line 15
    :goto_66
    iput-object v0, p0, Lcom/facebook/gamingservices/TournamentConfig;->endTime:Ljava/time/Instant;

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/gamingservices/TournamentConfig;->payload:Ljava/lang/String;

    .line 17
    iput-object v4, p0, Lcom/facebook/gamingservices/TournamentConfig;->image:Landroid/media/Image;

    return-void
.end method

.method private constructor <init>(Lcom/facebook/gamingservices/TournamentConfig$Builder;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/facebook/gamingservices/TournamentConfig$Builder;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/gamingservices/TournamentConfig;->title:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Lcom/facebook/gamingservices/TournamentConfig$Builder;->getSortOrder()Lcom/facebook/gamingservices/internal/TournamentSortOrder;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/gamingservices/TournamentConfig;->sortOrder:Lcom/facebook/gamingservices/internal/TournamentSortOrder;

    .line 4
    invoke-virtual {p1}, Lcom/facebook/gamingservices/TournamentConfig$Builder;->getScoreType()Lcom/facebook/gamingservices/internal/TournamentScoreType;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/gamingservices/TournamentConfig;->scoreType:Lcom/facebook/gamingservices/internal/TournamentScoreType;

    .line 5
    invoke-virtual {p1}, Lcom/facebook/gamingservices/TournamentConfig$Builder;->getEndTime()Ljava/time/Instant;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/gamingservices/TournamentConfig;->endTime:Ljava/time/Instant;

    .line 6
    invoke-virtual {p1}, Lcom/facebook/gamingservices/TournamentConfig$Builder;->getImage()Landroid/media/Image;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/gamingservices/TournamentConfig;->image:Landroid/media/Image;

    .line 7
    invoke-virtual {p1}, Lcom/facebook/gamingservices/TournamentConfig$Builder;->getPayload()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/gamingservices/TournamentConfig;->payload:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/gamingservices/TournamentConfig$Builder;Lt9/g;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/facebook/gamingservices/TournamentConfig;-><init>(Lcom/facebook/gamingservices/TournamentConfig$Builder;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final getEndTime()Ljava/time/Instant;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/facebook/gamingservices/TournamentConfig;->endTime:Ljava/time/Instant;

    return-object v0
.end method

.method public final getImage()Landroid/media/Image;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/facebook/gamingservices/TournamentConfig;->image:Landroid/media/Image;

    return-object v0
.end method

.method public final getPayload()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/facebook/gamingservices/TournamentConfig;->payload:Ljava/lang/String;

    return-object v0
.end method

.method public final getScoreType()Lcom/facebook/gamingservices/internal/TournamentScoreType;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/facebook/gamingservices/TournamentConfig;->scoreType:Lcom/facebook/gamingservices/internal/TournamentScoreType;

    return-object v0
.end method

.method public final getSortOrder()Lcom/facebook/gamingservices/internal/TournamentSortOrder;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/facebook/gamingservices/TournamentConfig;->sortOrder:Lcom/facebook/gamingservices/internal/TournamentSortOrder;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/facebook/gamingservices/TournamentConfig;->title:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    const-string p2, "out"

    invoke-static {p1, p2}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p2, p0, Lcom/facebook/gamingservices/TournamentConfig;->sortOrder:Lcom/facebook/gamingservices/internal/TournamentSortOrder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/facebook/gamingservices/TournamentConfig;->scoreType:Lcom/facebook/gamingservices/internal/TournamentScoreType;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lcom/facebook/gamingservices/TournamentConfig;->endTime:Ljava/time/Instant;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lcom/facebook/gamingservices/TournamentConfig;->title:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    iget-object p2, p0, Lcom/facebook/gamingservices/TournamentConfig;->payload:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method

###### Class com.facebook.gamingservices.TournamentConfig.Builder (com.facebook.gamingservices.TournamentConfig$Builder)
.class public final Lcom/facebook/gamingservices/TournamentConfig$Builder;
.super Ljava/lang/Object;
.source "TournamentConfig.kt"

# interfaces
.implements Lcom/facebook/share/model/ShareModelBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/gamingservices/TournamentConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/share/model/ShareModelBuilder<",
        "Lcom/facebook/gamingservices/TournamentConfig;",
        "Lcom/facebook/gamingservices/TournamentConfig$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private endTime:Ljava/time/Instant;

.field private image:Landroid/media/Image;

.field private payload:Ljava/lang/String;

.field private scoreType:Lcom/facebook/gamingservices/internal/TournamentScoreType;

.field private sortOrder:Lcom/facebook/gamingservices/internal/TournamentSortOrder;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/facebook/gamingservices/TournamentConfig;
    .registers 3

    .line 2
    new-instance v0, Lcom/facebook/gamingservices/TournamentConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/gamingservices/TournamentConfig;-><init>(Lcom/facebook/gamingservices/TournamentConfig$Builder;Lt9/g;)V

    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/facebook/gamingservices/TournamentConfig$Builder;->build()Lcom/facebook/gamingservices/TournamentConfig;

    move-result-object v0

    return-object v0
.end method

.method public final getEndTime()Ljava/time/Instant;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/facebook/gamingservices/TournamentConfig$Builder;->endTime:Ljava/time/Instant;

    return-object v0
.end method

.method public final getImage()Landroid/media/Image;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/facebook/gamingservices/TournamentConfig$Builder;->image:Landroid/media/Image;

    return-object v0
.end method

.method public final getPayload()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/facebook/gamingservices/TournamentConfig$Builder;->payload:Ljava/lang/String;

    return-object v0
.end method

.method public final getScoreType()Lcom/facebook/gamingservices/internal/TournamentScoreType;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/facebook/gamingservices/TournamentConfig$Builder;->scoreType:Lcom/facebook/gamingservices/internal/TournamentScoreType;

    return-object v0
.end method

.method public final getSortOrder()Lcom/facebook/gamingservices/internal/TournamentSortOrder;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/facebook/gamingservices/TournamentConfig$Builder;->sortOrder:Lcom/facebook/gamingservices/internal/TournamentSortOrder;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/facebook/gamingservices/TournamentConfig$Builder;->title:Ljava/lang/String;

    return-object v0
.end method

.method public readFrom(Lcom/facebook/gamingservices/TournamentConfig;)Lcom/facebook/gamingservices/TournamentConfig$Builder;
    .registers 3

    if-nez p1, :cond_3

    return-object p0

    .line 2
    :cond_3
    invoke-virtual {p1}, Lcom/facebook/gamingservices/TournamentConfig;->getSortOrder()Lcom/facebook/gamingservices/internal/TournamentSortOrder;

    move-result-object v0

    if-nez v0, :cond_a

    goto :goto_d

    :cond_a
    invoke-virtual {p0, v0}, Lcom/facebook/gamingservices/TournamentConfig$Builder;->setTournamentSortOrder(Lcom/facebook/gamingservices/internal/TournamentSortOrder;)Lcom/facebook/gamingservices/TournamentConfig$Builder;

    .line 3
    :goto_d
    invoke-virtual {p1}, Lcom/facebook/gamingservices/TournamentConfig;->getScoreType()Lcom/facebook/gamingservices/internal/TournamentScoreType;

    move-result-object v0

    if-nez v0, :cond_14

    goto :goto_17

    :cond_14
    invoke-virtual {p0, v0}, Lcom/facebook/gamingservices/TournamentConfig$Builder;->setTournamentScoreType(Lcom/facebook/gamingservices/internal/TournamentScoreType;)Lcom/facebook/gamingservices/TournamentConfig$Builder;

    .line 4
    :goto_17
    invoke-virtual {p1}, Lcom/facebook/gamingservices/TournamentConfig;->getEndTime()Ljava/time/Instant;

    move-result-object v0

    if-nez v0, :cond_1e

    goto :goto_21

    :cond_1e
    invoke-virtual {p0, v0}, Lcom/facebook/gamingservices/TournamentConfig$Builder;->setTournamentEndTime(Ljava/time/Instant;)Lcom/facebook/gamingservices/TournamentConfig$Builder;

    .line 5
    :goto_21
    invoke-virtual {p1}, Lcom/facebook/gamingservices/TournamentConfig;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_28

    goto :goto_2b

    :cond_28
    invoke-virtual {p0, v0}, Lcom/facebook/gamingservices/TournamentConfig$Builder;->setTournamentTitle(Ljava/lang/String;)Lcom/facebook/gamingservices/TournamentConfig$Builder;

    .line 6
    :goto_2b
    invoke-virtual {p1}, Lcom/facebook/gamingservices/TournamentConfig;->getPayload()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/facebook/gamingservices/TournamentConfig$Builder;->setTournamentPayload(Ljava/lang/String;)Lcom/facebook/gamingservices/TournamentConfig$Builder;

    return-object p0
.end method

.method public bridge synthetic readFrom(Lcom/facebook/share/model/ShareModel;)Lcom/facebook/share/model/ShareModelBuilder;
    .registers 2

    .line 1
    check-cast p1, Lcom/facebook/gamingservices/TournamentConfig;

    invoke-virtual {p0, p1}, Lcom/facebook/gamingservices/TournamentConfig$Builder;->readFrom(Lcom/facebook/gamingservices/TournamentConfig;)Lcom/facebook/gamingservices/TournamentConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final readFrom$facebook_gamingservices_release(Landroid/os/Parcel;)Lcom/facebook/gamingservices/TournamentConfig$Builder;
    .registers 3

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    const-class v0, Lcom/facebook/gamingservices/TournamentConfig;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/facebook/gamingservices/TournamentConfig;

    .line 2
    invoke-virtual {p0, p1}, Lcom/facebook/gamingservices/TournamentConfig$Builder;->readFrom(Lcom/facebook/gamingservices/TournamentConfig;)Lcom/facebook/gamingservices/TournamentConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setEndTime(Ljava/time/Instant;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/facebook/gamingservices/TournamentConfig$Builder;->endTime:Ljava/time/Instant;

    return-void
.end method

.method public final setImage(Landroid/media/Image;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/facebook/gamingservices/TournamentConfig$Builder;->image:Landroid/media/Image;

    return-void
.end method

.method public final setPayload(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/facebook/gamingservices/TournamentConfig$Builder;->payload:Ljava/lang/String;

    return-void
.end method

.method public final setScoreType(Lcom/facebook/gamingservices/internal/TournamentScoreType;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/facebook/gamingservices/TournamentConfig$Builder;->scoreType:Lcom/facebook/gamingservices/internal/TournamentScoreType;

    return-void
.end method

.method public final setSortOrder(Lcom/facebook/gamingservices/internal/TournamentSortOrder;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/facebook/gamingservices/TournamentConfig$Builder;->sortOrder:Lcom/facebook/gamingservices/internal/TournamentSortOrder;

    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/facebook/gamingservices/TournamentConfig$Builder;->title:Ljava/lang/String;

    return-void
.end method

.method public final setTournamentEndTime(Ljava/time/Instant;)Lcom/facebook/gamingservices/TournamentConfig$Builder;
    .registers 3

    const-string v0, "endTime"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/facebook/gamingservices/TournamentConfig$Builder;->endTime:Ljava/time/Instant;

    return-object p0
.end method

.method public final setTournamentImage(Landroid/media/Image;)Lcom/facebook/gamingservices/TournamentConfig$Builder;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/facebook/gamingservices/TournamentConfig$Builder;->image:Landroid/media/Image;

    return-object p0
.end method

.method public final setTournamentPayload(Ljava/lang/String;)Lcom/facebook/gamingservices/TournamentConfig$Builder;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/facebook/gamingservices/TournamentConfig$Builder;->payload:Ljava/lang/String;

    return-object p0
.end method

.method public final setTournamentScoreType(Lcom/facebook/gamingservices/internal/TournamentScoreType;)Lcom/facebook/gamingservices/TournamentConfig$Builder;
    .registers 3

    const-string v0, "scoreType"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/facebook/gamingservices/TournamentConfig$Builder;->scoreType:Lcom/facebook/gamingservices/internal/TournamentScoreType;

    return-object p0
.end method

.method public final setTournamentSortOrder(Lcom/facebook/gamingservices/internal/TournamentSortOrder;)Lcom/facebook/gamingservices/TournamentConfig$Builder;
    .registers 3

    const-string v0, "sortOrder"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/facebook/gamingservices/TournamentConfig$Builder;->sortOrder:Lcom/facebook/gamingservices/internal/TournamentSortOrder;

    return-object p0
.end method

.method public final setTournamentTitle(Ljava/lang/String;)Lcom/facebook/gamingservices/TournamentConfig$Builder;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/facebook/gamingservices/TournamentConfig$Builder;->title:Ljava/lang/String;

    return-object p0
.end method

###### Class com.facebook.gamingservices.TournamentConfig.CREATOR (com.facebook.gamingservices.TournamentConfig$CREATOR)
.class public final Lcom/facebook/gamingservices/TournamentConfig$CREATOR;
.super Ljava/lang/Object;
.source "TournamentConfig.kt"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/gamingservices/TournamentConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CREATOR"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/facebook/gamingservices/TournamentConfig;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lt9/g;)V
    .registers 2

    invoke-direct {p0}, Lcom/facebook/gamingservices/TournamentConfig$CREATOR;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/facebook/gamingservices/TournamentConfig;
    .registers 3

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/facebook/gamingservices/TournamentConfig;

    invoke-direct {v0, p1}, Lcom/facebook/gamingservices/TournamentConfig;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/facebook/gamingservices/TournamentConfig$CREATOR;->createFromParcel(Landroid/os/Parcel;)Lcom/facebook/gamingservices/TournamentConfig;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/facebook/gamingservices/TournamentConfig;
    .registers 2

    .line 2
    new-array p1, p1, [Lcom/facebook/gamingservices/TournamentConfig;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/facebook/gamingservices/TournamentConfig$CREATOR;->newArray(I)[Lcom/facebook/gamingservices/TournamentConfig;

    move-result-object p1

    return-object p1
.end method
