###### Class com.facebook.gamingservices.Tournament (com.facebook.gamingservices.Tournament)
.class public final Lcom/facebook/gamingservices/Tournament;
.super Ljava/lang/Object;
.source "Tournament.kt"

# interfaces
.implements Lcom/facebook/share/model/ShareModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/gamingservices/Tournament$Builder;,
        Lcom/facebook/gamingservices/Tournament$CREATOR;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/facebook/gamingservices/Tournament$CREATOR;


# instance fields
.field public endTime:Ljava/lang/String;
    .annotation runtime Lb7/c;
        value = "tournament_end_time"
    .end annotation
.end field

.field public final identifier:Ljava/lang/String;
    .annotation runtime Lb7/c;
        value = "id"
    .end annotation
.end field

.field public final payload:Ljava/lang/String;
    .annotation runtime Lb7/c;
        value = "tournament_payload"
    .end annotation
.end field

.field public final title:Ljava/lang/String;
    .annotation runtime Lb7/c;
        value = "tournament_title"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/facebook/gamingservices/Tournament$CREATOR;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/gamingservices/Tournament$CREATOR;-><init>(Lt9/g;)V

    sput-object v0, Lcom/facebook/gamingservices/Tournament;->CREATOR:Lcom/facebook/gamingservices/Tournament$CREATOR;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 5

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/facebook/gamingservices/Tournament;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const-string v0, "identifier"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/facebook/gamingservices/Tournament;->identifier:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/facebook/gamingservices/Tournament;->endTime:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/facebook/gamingservices/Tournament;->title:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/facebook/gamingservices/Tournament;->payload:Ljava/lang/String;

    if-nez p2, :cond_14

    const/4 p1, 0x0

    goto :goto_1a

    .line 6
    :cond_14
    sget-object p1, Lcom/facebook/gamingservices/internal/DateFormatter;->INSTANCE:Lcom/facebook/gamingservices/internal/DateFormatter;

    invoke-virtual {p1, p2}, Lcom/facebook/gamingservices/internal/DateFormatter;->format$facebook_gamingservices_release(Ljava/lang/String;)Ljava/time/ZonedDateTime;

    move-result-object p1

    :goto_1a
    invoke-direct {p0, p1}, Lcom/facebook/gamingservices/Tournament;->setExpiration(Ljava/time/ZonedDateTime;)V

    return-void
.end method

.method private final setExpiration(Ljava/time/ZonedDateTime;)V
    .registers 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_13

    if-eqz p1, :cond_13

    .line 2
    sget-object v0, Ljava/time/format/DateTimeFormatter;->ISO_DATE_TIME:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {p1, v0}, Ljava/time/ZonedDateTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/gamingservices/Tournament;->endTime:Ljava/lang/String;

    .line 3
    invoke-direct {p0, p1}, Lcom/facebook/gamingservices/Tournament;->setExpiration(Ljava/time/ZonedDateTime;)V

    :cond_13
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final getExpiration()Ljava/time/ZonedDateTime;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/facebook/gamingservices/Tournament;->endTime:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    .line 2
    :cond_6
    sget-object v1, Lcom/facebook/gamingservices/internal/DateFormatter;->INSTANCE:Lcom/facebook/gamingservices/internal/DateFormatter;

    invoke-virtual {v1, v0}, Lcom/facebook/gamingservices/internal/DateFormatter;->format$facebook_gamingservices_release(Ljava/lang/String;)Ljava/time/ZonedDateTime;

    move-result-object v0

    :goto_c
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    const-string p2, "out"

    invoke-static {p1, p2}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p2, p0, Lcom/facebook/gamingservices/Tournament;->identifier:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/facebook/gamingservices/Tournament;->endTime:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lcom/facebook/gamingservices/Tournament;->title:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lcom/facebook/gamingservices/Tournament;->payload:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method

###### Class com.facebook.gamingservices.Tournament.Builder (com.facebook.gamingservices.Tournament$Builder)
.class public final Lcom/facebook/gamingservices/Tournament$Builder;
.super Ljava/lang/Object;
.source "Tournament.kt"

# interfaces
.implements Lcom/facebook/share/model/ShareModelBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/gamingservices/Tournament;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/share/model/ShareModelBuilder<",
        "Lcom/facebook/gamingservices/Tournament;",
        "Lcom/facebook/gamingservices/Tournament$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private endTime:Ljava/lang/String;

.field private expiration:Ljava/time/ZonedDateTime;

.field private identifier:Ljava/lang/String;

.field private payload:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/time/ZonedDateTime;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const-string v0, "identifier"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/facebook/gamingservices/Tournament$Builder;->identifier:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/facebook/gamingservices/Tournament$Builder;->expiration:Ljava/time/ZonedDateTime;

    .line 4
    iput-object p3, p0, Lcom/facebook/gamingservices/Tournament$Builder;->title:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/facebook/gamingservices/Tournament$Builder;->payload:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/time/ZonedDateTime;Ljava/lang/String;Ljava/lang/String;ILt9/g;)V
    .registers 8

    and-int/lit8 p6, p5, 0x2

    const/4 v0, 0x0

    if-eqz p6, :cond_6

    move-object p2, v0

    :cond_6
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_b

    move-object p3, v0

    :cond_b
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_10

    move-object p4, v0

    .line 6
    :cond_10
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/gamingservices/Tournament$Builder;-><init>(Ljava/lang/String;Ljava/time/ZonedDateTime;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/facebook/gamingservices/Tournament$Builder;Ljava/lang/String;Ljava/time/ZonedDateTime;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/facebook/gamingservices/Tournament$Builder;
    .registers 7

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_6

    iget-object p1, p0, Lcom/facebook/gamingservices/Tournament$Builder;->identifier:Ljava/lang/String;

    :cond_6
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_c

    iget-object p2, p0, Lcom/facebook/gamingservices/Tournament$Builder;->expiration:Ljava/time/ZonedDateTime;

    :cond_c
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_12

    iget-object p3, p0, Lcom/facebook/gamingservices/Tournament$Builder;->title:Ljava/lang/String;

    :cond_12
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_18

    iget-object p4, p0, Lcom/facebook/gamingservices/Tournament$Builder;->payload:Ljava/lang/String;

    :cond_18
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/facebook/gamingservices/Tournament$Builder;->copy(Ljava/lang/String;Ljava/time/ZonedDateTime;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/gamingservices/Tournament$Builder;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public build()Lcom/facebook/gamingservices/Tournament;
    .registers 6

    .line 2
    new-instance v0, Lcom/facebook/gamingservices/Tournament;

    iget-object v1, p0, Lcom/facebook/gamingservices/Tournament$Builder;->identifier:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/gamingservices/Tournament$Builder;->endTime:Ljava/lang/String;

    iget-object v3, p0, Lcom/facebook/gamingservices/Tournament$Builder;->title:Ljava/lang/String;

    iget-object v4, p0, Lcom/facebook/gamingservices/Tournament$Builder;->payload:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/gamingservices/Tournament;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/facebook/gamingservices/Tournament$Builder;->build()Lcom/facebook/gamingservices/Tournament;

    move-result-object v0

    return-object v0
.end method

.method public final component1()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/gamingservices/Tournament$Builder;->identifier:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/time/ZonedDateTime;
    .registers 2

    iget-object v0, p0, Lcom/facebook/gamingservices/Tournament$Builder;->expiration:Ljava/time/ZonedDateTime;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/gamingservices/Tournament$Builder;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/gamingservices/Tournament$Builder;->payload:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/time/ZonedDateTime;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/gamingservices/Tournament$Builder;
    .registers 6

    const-string v0, "identifier"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/facebook/gamingservices/Tournament$Builder;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/facebook/gamingservices/Tournament$Builder;-><init>(Ljava/lang/String;Ljava/time/ZonedDateTime;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/facebook/gamingservices/Tournament$Builder;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/facebook/gamingservices/Tournament$Builder;

    iget-object v1, p0, Lcom/facebook/gamingservices/Tournament$Builder;->identifier:Ljava/lang/String;

    iget-object v3, p1, Lcom/facebook/gamingservices/Tournament$Builder;->identifier:Ljava/lang/String;

    invoke-static {v1, v3}, Lt9/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/facebook/gamingservices/Tournament$Builder;->expiration:Ljava/time/ZonedDateTime;

    iget-object v3, p1, Lcom/facebook/gamingservices/Tournament$Builder;->expiration:Ljava/time/ZonedDateTime;

    invoke-static {v1, v3}, Lt9/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lcom/facebook/gamingservices/Tournament$Builder;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/facebook/gamingservices/Tournament$Builder;->title:Ljava/lang/String;

    invoke-static {v1, v3}, Lt9/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    return v2

    :cond_2d
    iget-object v1, p0, Lcom/facebook/gamingservices/Tournament$Builder;->payload:Ljava/lang/String;

    iget-object p1, p1, Lcom/facebook/gamingservices/Tournament$Builder;->payload:Ljava/lang/String;

    invoke-static {v1, p1}, Lt9/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_38

    return v2

    :cond_38
    return v0
.end method

.method public final expiration(Ljava/time/ZonedDateTime;)Lcom/facebook/gamingservices/Tournament$Builder;
    .registers 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/facebook/gamingservices/Tournament$Builder;->setExpiration(Ljava/time/ZonedDateTime;)V

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_14

    if-eqz p1, :cond_14

    .line 3
    sget-object v0, Ljava/time/format/DateTimeFormatter;->ISO_DATE_TIME:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {p1, v0}, Ljava/time/ZonedDateTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/facebook/gamingservices/Tournament$Builder;->setEndTime(Ljava/lang/String;)V

    :cond_14
    return-object p0
.end method

.method public final getEndTime()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/facebook/gamingservices/Tournament$Builder;->endTime:Ljava/lang/String;

    return-object v0
.end method

.method public final getExpiration()Ljava/time/ZonedDateTime;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/facebook/gamingservices/Tournament$Builder;->expiration:Ljava/time/ZonedDateTime;

    return-object v0
.end method

.method public final getIdentifier()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/facebook/gamingservices/Tournament$Builder;->identifier:Ljava/lang/String;

    return-object v0
.end method

.method public final getPayload()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/facebook/gamingservices/Tournament$Builder;->payload:Ljava/lang/String;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/facebook/gamingservices/Tournament$Builder;->title:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/facebook/gamingservices/Tournament$Builder;->identifier:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/facebook/gamingservices/Tournament$Builder;->expiration:Ljava/time/ZonedDateTime;

    const/4 v2, 0x0

    if-nez v1, :cond_f

    const/4 v1, 0x0

    goto :goto_13

    :cond_f
    invoke-virtual {v1}, Ljava/time/ZonedDateTime;->hashCode()I

    move-result v1

    :goto_13
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/facebook/gamingservices/Tournament$Builder;->title:Ljava/lang/String;

    if-nez v1, :cond_1c

    const/4 v1, 0x0

    goto :goto_20

    :cond_1c
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_20
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/facebook/gamingservices/Tournament$Builder;->payload:Ljava/lang/String;

    if-nez v1, :cond_28

    goto :goto_2c

    :cond_28
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2c
    add-int/2addr v0, v2

    return v0
.end method

.method public final identifier(Ljava/lang/String;)Lcom/facebook/gamingservices/Tournament$Builder;
    .registers 3

    const-string v0, "identifier"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Lcom/facebook/gamingservices/Tournament$Builder;->setIdentifier(Ljava/lang/String;)V

    return-object p0
.end method

.method public final payload(Ljava/lang/String;)Lcom/facebook/gamingservices/Tournament$Builder;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/facebook/gamingservices/Tournament$Builder;->setPayload(Ljava/lang/String;)V

    return-object p0
.end method

.method public readFrom(Lcom/facebook/gamingservices/Tournament;)Lcom/facebook/gamingservices/Tournament$Builder;
    .registers 4

    if-nez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_1e

    .line 2
    :cond_4
    iget-object v0, p1, Lcom/facebook/gamingservices/Tournament;->identifier:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/facebook/gamingservices/Tournament$Builder;->identifier(Ljava/lang/String;)Lcom/facebook/gamingservices/Tournament$Builder;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Lcom/facebook/gamingservices/Tournament;->getExpiration()Ljava/time/ZonedDateTime;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/gamingservices/Tournament$Builder;->expiration(Ljava/time/ZonedDateTime;)Lcom/facebook/gamingservices/Tournament$Builder;

    move-result-object v0

    .line 4
    iget-object v1, p1, Lcom/facebook/gamingservices/Tournament;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/gamingservices/Tournament$Builder;->title(Ljava/lang/String;)Lcom/facebook/gamingservices/Tournament$Builder;

    move-result-object v0

    .line 5
    iget-object p1, p1, Lcom/facebook/gamingservices/Tournament;->payload:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/facebook/gamingservices/Tournament$Builder;->payload(Ljava/lang/String;)Lcom/facebook/gamingservices/Tournament$Builder;

    move-result-object p1

    :goto_1e
    if-nez p1, :cond_21

    move-object p1, p0

    :cond_21
    return-object p1
.end method

.method public bridge synthetic readFrom(Lcom/facebook/share/model/ShareModel;)Lcom/facebook/share/model/ShareModelBuilder;
    .registers 2

    .line 1
    check-cast p1, Lcom/facebook/gamingservices/Tournament;

    invoke-virtual {p0, p1}, Lcom/facebook/gamingservices/Tournament$Builder;->readFrom(Lcom/facebook/gamingservices/Tournament;)Lcom/facebook/gamingservices/Tournament$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setEndTime(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/facebook/gamingservices/Tournament$Builder;->endTime:Ljava/lang/String;

    return-void
.end method

.method public final setExpiration(Ljava/time/ZonedDateTime;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/facebook/gamingservices/Tournament$Builder;->expiration:Ljava/time/ZonedDateTime;

    return-void
.end method

.method public final setIdentifier(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/facebook/gamingservices/Tournament$Builder;->identifier:Ljava/lang/String;

    return-void
.end method

.method public final setPayload(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/facebook/gamingservices/Tournament$Builder;->payload:Ljava/lang/String;

    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/facebook/gamingservices/Tournament$Builder;->title:Ljava/lang/String;

    return-void
.end method

.method public final title(Ljava/lang/String;)Lcom/facebook/gamingservices/Tournament$Builder;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/facebook/gamingservices/Tournament$Builder;->setTitle(Ljava/lang/String;)V

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Builder(identifier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/facebook/gamingservices/Tournament$Builder;->identifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", expiration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/facebook/gamingservices/Tournament$Builder;->expiration:Ljava/time/ZonedDateTime;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/facebook/gamingservices/Tournament$Builder;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", payload="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/facebook/gamingservices/Tournament$Builder;->payload:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.facebook.gamingservices.Tournament.CREATOR (com.facebook.gamingservices.Tournament$CREATOR)
.class public final Lcom/facebook/gamingservices/Tournament$CREATOR;
.super Ljava/lang/Object;
.source "Tournament.kt"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/gamingservices/Tournament;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CREATOR"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/facebook/gamingservices/Tournament;",
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

    invoke-direct {p0}, Lcom/facebook/gamingservices/Tournament$CREATOR;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/facebook/gamingservices/Tournament;
    .registers 3

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/facebook/gamingservices/Tournament;

    invoke-direct {v0, p1}, Lcom/facebook/gamingservices/Tournament;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/facebook/gamingservices/Tournament$CREATOR;->createFromParcel(Landroid/os/Parcel;)Lcom/facebook/gamingservices/Tournament;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/facebook/gamingservices/Tournament;
    .registers 2

    .line 2
    new-array p1, p1, [Lcom/facebook/gamingservices/Tournament;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/facebook/gamingservices/Tournament$CREATOR;->newArray(I)[Lcom/facebook/gamingservices/Tournament;

    move-result-object p1

    return-object p1
.end method
