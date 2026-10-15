###### Class com.facebook.gamingservices.model.ContextCreateContent (com.facebook.gamingservices.model.ContextCreateContent)
.class public final Lcom/facebook/gamingservices/model/ContextCreateContent;
.super Ljava/lang/Object;
.source "ContextCreateContent.kt"

# interfaces
.implements Lcom/facebook/share/model/ShareModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/gamingservices/model/ContextCreateContent$Builder;,
        Lcom/facebook/gamingservices/model/ContextCreateContent$CREATOR;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/facebook/gamingservices/model/ContextCreateContent$CREATOR;


# instance fields
.field private final suggestedPlayerID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/facebook/gamingservices/model/ContextCreateContent$CREATOR;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/gamingservices/model/ContextCreateContent$CREATOR;-><init>(Lt9/g;)V

    sput-object v0, Lcom/facebook/gamingservices/model/ContextCreateContent;->CREATOR:Lcom/facebook/gamingservices/model/ContextCreateContent$CREATOR;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/gamingservices/model/ContextCreateContent;->suggestedPlayerID:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/facebook/gamingservices/model/ContextCreateContent$Builder;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/facebook/gamingservices/model/ContextCreateContent$Builder;->getSuggestedPlayerID$facebook_gamingservices_release()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/gamingservices/model/ContextCreateContent;->suggestedPlayerID:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/gamingservices/model/ContextCreateContent$Builder;Lt9/g;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/facebook/gamingservices/model/ContextCreateContent;-><init>(Lcom/facebook/gamingservices/model/ContextCreateContent$Builder;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final getSuggestedPlayerID()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/facebook/gamingservices/model/ContextCreateContent;->suggestedPlayerID:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    const-string p2, "out"

    invoke-static {p1, p2}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p2, p0, Lcom/facebook/gamingservices/model/ContextCreateContent;->suggestedPlayerID:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method

###### Class com.facebook.gamingservices.model.ContextCreateContent.Builder (com.facebook.gamingservices.model.ContextCreateContent$Builder)
.class public final Lcom/facebook/gamingservices/model/ContextCreateContent$Builder;
.super Ljava/lang/Object;
.source "ContextCreateContent.kt"

# interfaces
.implements Lcom/facebook/share/model/ShareModelBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/gamingservices/model/ContextCreateContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/share/model/ShareModelBuilder<",
        "Lcom/facebook/gamingservices/model/ContextCreateContent;",
        "Lcom/facebook/gamingservices/model/ContextCreateContent$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private suggestedPlayerID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/facebook/gamingservices/model/ContextCreateContent;
    .registers 3

    .line 2
    new-instance v0, Lcom/facebook/gamingservices/model/ContextCreateContent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/gamingservices/model/ContextCreateContent;-><init>(Lcom/facebook/gamingservices/model/ContextCreateContent$Builder;Lt9/g;)V

    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/facebook/gamingservices/model/ContextCreateContent$Builder;->build()Lcom/facebook/gamingservices/model/ContextCreateContent;

    move-result-object v0

    return-object v0
.end method

.method public final getSuggestedPlayerID$facebook_gamingservices_release()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/facebook/gamingservices/model/ContextCreateContent$Builder;->suggestedPlayerID:Ljava/lang/String;

    return-object v0
.end method

.method public final readFrom(Landroid/os/Parcel;)Lcom/facebook/gamingservices/model/ContextCreateContent$Builder;
    .registers 3

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    const-class v0, Lcom/facebook/gamingservices/model/ContextCreateContent;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/facebook/gamingservices/model/ContextCreateContent;

    .line 4
    invoke-virtual {p0, p1}, Lcom/facebook/gamingservices/model/ContextCreateContent$Builder;->readFrom(Lcom/facebook/gamingservices/model/ContextCreateContent;)Lcom/facebook/gamingservices/model/ContextCreateContent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public readFrom(Lcom/facebook/gamingservices/model/ContextCreateContent;)Lcom/facebook/gamingservices/model/ContextCreateContent$Builder;
    .registers 2

    if-nez p1, :cond_3

    goto :goto_d

    .line 2
    :cond_3
    invoke-virtual {p1}, Lcom/facebook/gamingservices/model/ContextCreateContent;->getSuggestedPlayerID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/facebook/gamingservices/model/ContextCreateContent$Builder;->setSuggestedPlayerID(Ljava/lang/String;)Lcom/facebook/gamingservices/model/ContextCreateContent$Builder;

    move-result-object p1

    if-nez p1, :cond_e

    :goto_d
    move-object p1, p0

    :cond_e
    return-object p1
.end method

.method public bridge synthetic readFrom(Lcom/facebook/share/model/ShareModel;)Lcom/facebook/share/model/ShareModelBuilder;
    .registers 2

    .line 1
    check-cast p1, Lcom/facebook/gamingservices/model/ContextCreateContent;

    invoke-virtual {p0, p1}, Lcom/facebook/gamingservices/model/ContextCreateContent$Builder;->readFrom(Lcom/facebook/gamingservices/model/ContextCreateContent;)Lcom/facebook/gamingservices/model/ContextCreateContent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setSuggestedPlayerID(Ljava/lang/String;)Lcom/facebook/gamingservices/model/ContextCreateContent$Builder;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/facebook/gamingservices/model/ContextCreateContent$Builder;->suggestedPlayerID:Ljava/lang/String;

    return-object p0
.end method

.method public final setSuggestedPlayerID$facebook_gamingservices_release(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/facebook/gamingservices/model/ContextCreateContent$Builder;->suggestedPlayerID:Ljava/lang/String;

    return-void
.end method

###### Class com.facebook.gamingservices.model.ContextCreateContent.CREATOR (com.facebook.gamingservices.model.ContextCreateContent$CREATOR)
.class public final Lcom/facebook/gamingservices/model/ContextCreateContent$CREATOR;
.super Ljava/lang/Object;
.source "ContextCreateContent.kt"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/gamingservices/model/ContextCreateContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CREATOR"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/facebook/gamingservices/model/ContextCreateContent;",
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

    invoke-direct {p0}, Lcom/facebook/gamingservices/model/ContextCreateContent$CREATOR;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/facebook/gamingservices/model/ContextCreateContent;
    .registers 3

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/facebook/gamingservices/model/ContextCreateContent;

    invoke-direct {v0, p1}, Lcom/facebook/gamingservices/model/ContextCreateContent;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/facebook/gamingservices/model/ContextCreateContent$CREATOR;->createFromParcel(Landroid/os/Parcel;)Lcom/facebook/gamingservices/model/ContextCreateContent;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/facebook/gamingservices/model/ContextCreateContent;
    .registers 2

    .line 2
    new-array p1, p1, [Lcom/facebook/gamingservices/model/ContextCreateContent;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/facebook/gamingservices/model/ContextCreateContent$CREATOR;->newArray(I)[Lcom/facebook/gamingservices/model/ContextCreateContent;

    move-result-object p1

    return-object p1
.end method
