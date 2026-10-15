###### Class com.facebook.gamingservices.model.ContextSwitchContent (com.facebook.gamingservices.model.ContextSwitchContent)
.class public final Lcom/facebook/gamingservices/model/ContextSwitchContent;
.super Ljava/lang/Object;
.source "ContextSwitchContent.kt"

# interfaces
.implements Lcom/facebook/share/model/ShareModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/gamingservices/model/ContextSwitchContent$Builder;,
        Lcom/facebook/gamingservices/model/ContextSwitchContent$CREATOR;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/facebook/gamingservices/model/ContextSwitchContent$CREATOR;


# instance fields
.field private final contextID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/facebook/gamingservices/model/ContextSwitchContent$CREATOR;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/gamingservices/model/ContextSwitchContent$CREATOR;-><init>(Lt9/g;)V

    sput-object v0, Lcom/facebook/gamingservices/model/ContextSwitchContent;->CREATOR:Lcom/facebook/gamingservices/model/ContextSwitchContent$CREATOR;

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

    iput-object p1, p0, Lcom/facebook/gamingservices/model/ContextSwitchContent;->contextID:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/facebook/gamingservices/model/ContextSwitchContent$Builder;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/facebook/gamingservices/model/ContextSwitchContent$Builder;->getContextID$facebook_gamingservices_release()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/gamingservices/model/ContextSwitchContent;->contextID:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/gamingservices/model/ContextSwitchContent$Builder;Lt9/g;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/facebook/gamingservices/model/ContextSwitchContent;-><init>(Lcom/facebook/gamingservices/model/ContextSwitchContent$Builder;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final getContextID()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/facebook/gamingservices/model/ContextSwitchContent;->contextID:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    const-string p2, "out"

    invoke-static {p1, p2}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p2, p0, Lcom/facebook/gamingservices/model/ContextSwitchContent;->contextID:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method

###### Class com.facebook.gamingservices.model.ContextSwitchContent.Builder (com.facebook.gamingservices.model.ContextSwitchContent$Builder)
.class public final Lcom/facebook/gamingservices/model/ContextSwitchContent$Builder;
.super Ljava/lang/Object;
.source "ContextSwitchContent.kt"

# interfaces
.implements Lcom/facebook/share/model/ShareModelBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/gamingservices/model/ContextSwitchContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/share/model/ShareModelBuilder<",
        "Lcom/facebook/gamingservices/model/ContextSwitchContent;",
        "Lcom/facebook/gamingservices/model/ContextSwitchContent$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private contextID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/facebook/gamingservices/model/ContextSwitchContent;
    .registers 3

    .line 2
    new-instance v0, Lcom/facebook/gamingservices/model/ContextSwitchContent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/gamingservices/model/ContextSwitchContent;-><init>(Lcom/facebook/gamingservices/model/ContextSwitchContent$Builder;Lt9/g;)V

    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/facebook/gamingservices/model/ContextSwitchContent$Builder;->build()Lcom/facebook/gamingservices/model/ContextSwitchContent;

    move-result-object v0

    return-object v0
.end method

.method public final getContextID$facebook_gamingservices_release()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/facebook/gamingservices/model/ContextSwitchContent$Builder;->contextID:Ljava/lang/String;

    return-object v0
.end method

.method public final readFrom(Landroid/os/Parcel;)Lcom/facebook/gamingservices/model/ContextSwitchContent$Builder;
    .registers 3

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    const-class v0, Lcom/facebook/gamingservices/model/ContextSwitchContent;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/facebook/gamingservices/model/ContextSwitchContent;

    .line 4
    invoke-virtual {p0, p1}, Lcom/facebook/gamingservices/model/ContextSwitchContent$Builder;->readFrom(Lcom/facebook/gamingservices/model/ContextSwitchContent;)Lcom/facebook/gamingservices/model/ContextSwitchContent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public readFrom(Lcom/facebook/gamingservices/model/ContextSwitchContent;)Lcom/facebook/gamingservices/model/ContextSwitchContent$Builder;
    .registers 2

    if-nez p1, :cond_3

    goto :goto_d

    .line 2
    :cond_3
    invoke-virtual {p1}, Lcom/facebook/gamingservices/model/ContextSwitchContent;->getContextID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/facebook/gamingservices/model/ContextSwitchContent$Builder;->setContextID(Ljava/lang/String;)Lcom/facebook/gamingservices/model/ContextSwitchContent$Builder;

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
    check-cast p1, Lcom/facebook/gamingservices/model/ContextSwitchContent;

    invoke-virtual {p0, p1}, Lcom/facebook/gamingservices/model/ContextSwitchContent$Builder;->readFrom(Lcom/facebook/gamingservices/model/ContextSwitchContent;)Lcom/facebook/gamingservices/model/ContextSwitchContent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setContextID(Ljava/lang/String;)Lcom/facebook/gamingservices/model/ContextSwitchContent$Builder;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/facebook/gamingservices/model/ContextSwitchContent$Builder;->contextID:Ljava/lang/String;

    return-object p0
.end method

.method public final setContextID$facebook_gamingservices_release(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/facebook/gamingservices/model/ContextSwitchContent$Builder;->contextID:Ljava/lang/String;

    return-void
.end method

###### Class com.facebook.gamingservices.model.ContextSwitchContent.CREATOR (com.facebook.gamingservices.model.ContextSwitchContent$CREATOR)
.class public final Lcom/facebook/gamingservices/model/ContextSwitchContent$CREATOR;
.super Ljava/lang/Object;
.source "ContextSwitchContent.kt"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/gamingservices/model/ContextSwitchContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CREATOR"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/facebook/gamingservices/model/ContextSwitchContent;",
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

    invoke-direct {p0}, Lcom/facebook/gamingservices/model/ContextSwitchContent$CREATOR;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/facebook/gamingservices/model/ContextSwitchContent;
    .registers 3

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/facebook/gamingservices/model/ContextSwitchContent;

    invoke-direct {v0, p1}, Lcom/facebook/gamingservices/model/ContextSwitchContent;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/facebook/gamingservices/model/ContextSwitchContent$CREATOR;->createFromParcel(Landroid/os/Parcel;)Lcom/facebook/gamingservices/model/ContextSwitchContent;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/facebook/gamingservices/model/ContextSwitchContent;
    .registers 2

    .line 2
    new-array p1, p1, [Lcom/facebook/gamingservices/model/ContextSwitchContent;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/facebook/gamingservices/model/ContextSwitchContent$CREATOR;->newArray(I)[Lcom/facebook/gamingservices/model/ContextSwitchContent;

    move-result-object p1

    return-object p1
.end method
