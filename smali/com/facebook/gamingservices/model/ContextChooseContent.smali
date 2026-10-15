###### Class com.facebook.gamingservices.model.ContextChooseContent (com.facebook.gamingservices.model.ContextChooseContent)
.class public final Lcom/facebook/gamingservices/model/ContextChooseContent;
.super Ljava/lang/Object;
.source "ContextChooseContent.kt"

# interfaces
.implements Lcom/facebook/share/model/ShareModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/gamingservices/model/ContextChooseContent$Builder;,
        Lcom/facebook/gamingservices/model/ContextChooseContent$CREATOR;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/facebook/gamingservices/model/ContextChooseContent$CREATOR;


# instance fields
.field private final filters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final maxSize:Ljava/lang/Integer;

.field private final minSize:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/facebook/gamingservices/model/ContextChooseContent$CREATOR;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/gamingservices/model/ContextChooseContent$CREATOR;-><init>(Lt9/g;)V

    sput-object v0, Lcom/facebook/gamingservices/model/ContextChooseContent;->CREATOR:Lcom/facebook/gamingservices/model/ContextChooseContent$CREATOR;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/gamingservices/model/ContextChooseContent;->filters:Ljava/util/List;

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/gamingservices/model/ContextChooseContent;->maxSize:Ljava/lang/Integer;

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/gamingservices/model/ContextChooseContent;->minSize:Ljava/lang/Integer;

    return-void
.end method

.method private constructor <init>(Lcom/facebook/gamingservices/model/ContextChooseContent$Builder;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/facebook/gamingservices/model/ContextChooseContent$Builder;->getFilters$facebook_gamingservices_release()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/gamingservices/model/ContextChooseContent;->filters:Ljava/util/List;

    .line 3
    invoke-virtual {p1}, Lcom/facebook/gamingservices/model/ContextChooseContent$Builder;->getMaxSize$facebook_gamingservices_release()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/gamingservices/model/ContextChooseContent;->maxSize:Ljava/lang/Integer;

    .line 4
    invoke-virtual {p1}, Lcom/facebook/gamingservices/model/ContextChooseContent$Builder;->getMinSize$facebook_gamingservices_release()Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/gamingservices/model/ContextChooseContent;->minSize:Ljava/lang/Integer;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/gamingservices/model/ContextChooseContent$Builder;Lt9/g;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/facebook/gamingservices/model/ContextChooseContent;-><init>(Lcom/facebook/gamingservices/model/ContextChooseContent$Builder;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final getFilters()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/gamingservices/model/ContextChooseContent;->filters:Ljava/util/List;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :goto_a
    return-object v0
.end method

.method public final getMaxSize()Ljava/lang/Integer;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/facebook/gamingservices/model/ContextChooseContent;->maxSize:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getMinSize()Ljava/lang/Integer;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/facebook/gamingservices/model/ContextChooseContent;->minSize:Ljava/lang/Integer;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    const-string p2, "out"

    invoke-static {p1, p2}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p2, p0, Lcom/facebook/gamingservices/model/ContextChooseContent;->filters:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 2
    iget-object p2, p0, Lcom/facebook/gamingservices/model/ContextChooseContent;->maxSize:Ljava/lang/Integer;

    const/4 v0, 0x0

    if-nez p2, :cond_11

    const/4 p2, 0x0

    goto :goto_15

    :cond_11
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    :goto_15
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget-object p2, p0, Lcom/facebook/gamingservices/model/ContextChooseContent;->minSize:Ljava/lang/Integer;

    if-nez p2, :cond_1d

    goto :goto_21

    :cond_1d
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_21
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

###### Class com.facebook.gamingservices.model.ContextChooseContent.Builder (com.facebook.gamingservices.model.ContextChooseContent$Builder)
.class public final Lcom/facebook/gamingservices/model/ContextChooseContent$Builder;
.super Ljava/lang/Object;
.source "ContextChooseContent.kt"

# interfaces
.implements Lcom/facebook/share/model/ShareModelBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/gamingservices/model/ContextChooseContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/share/model/ShareModelBuilder<",
        "Lcom/facebook/gamingservices/model/ContextChooseContent;",
        "Lcom/facebook/gamingservices/model/ContextChooseContent$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private filters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private maxSize:Ljava/lang/Integer;

.field private minSize:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/facebook/gamingservices/model/ContextChooseContent;
    .registers 3

    .line 2
    new-instance v0, Lcom/facebook/gamingservices/model/ContextChooseContent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/gamingservices/model/ContextChooseContent;-><init>(Lcom/facebook/gamingservices/model/ContextChooseContent$Builder;Lt9/g;)V

    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/facebook/gamingservices/model/ContextChooseContent$Builder;->build()Lcom/facebook/gamingservices/model/ContextChooseContent;

    move-result-object v0

    return-object v0
.end method

.method public final getFilters$facebook_gamingservices_release()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/gamingservices/model/ContextChooseContent$Builder;->filters:Ljava/util/List;

    return-object v0
.end method

.method public final getMaxSize$facebook_gamingservices_release()Ljava/lang/Integer;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/facebook/gamingservices/model/ContextChooseContent$Builder;->maxSize:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getMinSize$facebook_gamingservices_release()Ljava/lang/Integer;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/facebook/gamingservices/model/ContextChooseContent$Builder;->minSize:Ljava/lang/Integer;

    return-object v0
.end method

.method public final readFrom(Landroid/os/Parcel;)Lcom/facebook/gamingservices/model/ContextChooseContent$Builder;
    .registers 3

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    const-class v0, Lcom/facebook/gamingservices/model/ContextChooseContent;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/facebook/gamingservices/model/ContextChooseContent;

    .line 4
    invoke-virtual {p0, p1}, Lcom/facebook/gamingservices/model/ContextChooseContent$Builder;->readFrom(Lcom/facebook/gamingservices/model/ContextChooseContent;)Lcom/facebook/gamingservices/model/ContextChooseContent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public readFrom(Lcom/facebook/gamingservices/model/ContextChooseContent;)Lcom/facebook/gamingservices/model/ContextChooseContent$Builder;
    .registers 4

    if-nez p1, :cond_3

    goto :goto_1d

    .line 2
    :cond_3
    invoke-virtual {p1}, Lcom/facebook/gamingservices/model/ContextChooseContent;->getFilters()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/gamingservices/model/ContextChooseContent$Builder;->setFilters(Ljava/util/List;)Lcom/facebook/gamingservices/model/ContextChooseContent$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/gamingservices/model/ContextChooseContent;->getMaxSize()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/gamingservices/model/ContextChooseContent$Builder;->setMaxSize(Ljava/lang/Integer;)Lcom/facebook/gamingservices/model/ContextChooseContent$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/gamingservices/model/ContextChooseContent;->getMinSize()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/facebook/gamingservices/model/ContextChooseContent$Builder;->setMinSize(Ljava/lang/Integer;)Lcom/facebook/gamingservices/model/ContextChooseContent$Builder;

    move-result-object p1

    if-nez p1, :cond_1e

    :goto_1d
    move-object p1, p0

    :cond_1e
    return-object p1
.end method

.method public bridge synthetic readFrom(Lcom/facebook/share/model/ShareModel;)Lcom/facebook/share/model/ShareModelBuilder;
    .registers 2

    .line 1
    check-cast p1, Lcom/facebook/gamingservices/model/ContextChooseContent;

    invoke-virtual {p0, p1}, Lcom/facebook/gamingservices/model/ContextChooseContent$Builder;->readFrom(Lcom/facebook/gamingservices/model/ContextChooseContent;)Lcom/facebook/gamingservices/model/ContextChooseContent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setFilters(Ljava/util/List;)Lcom/facebook/gamingservices/model/ContextChooseContent$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/facebook/gamingservices/model/ContextChooseContent$Builder;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/gamingservices/model/ContextChooseContent$Builder;->filters:Ljava/util/List;

    return-object p0
.end method

.method public final setFilters$facebook_gamingservices_release(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/gamingservices/model/ContextChooseContent$Builder;->filters:Ljava/util/List;

    return-void
.end method

.method public final setMaxSize(Ljava/lang/Integer;)Lcom/facebook/gamingservices/model/ContextChooseContent$Builder;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/facebook/gamingservices/model/ContextChooseContent$Builder;->maxSize:Ljava/lang/Integer;

    return-object p0
.end method

.method public final setMaxSize$facebook_gamingservices_release(Ljava/lang/Integer;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/facebook/gamingservices/model/ContextChooseContent$Builder;->maxSize:Ljava/lang/Integer;

    return-void
.end method

.method public final setMinSize(Ljava/lang/Integer;)Lcom/facebook/gamingservices/model/ContextChooseContent$Builder;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/facebook/gamingservices/model/ContextChooseContent$Builder;->minSize:Ljava/lang/Integer;

    return-object p0
.end method

.method public final setMinSize$facebook_gamingservices_release(Ljava/lang/Integer;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/facebook/gamingservices/model/ContextChooseContent$Builder;->minSize:Ljava/lang/Integer;

    return-void
.end method

###### Class com.facebook.gamingservices.model.ContextChooseContent.CREATOR (com.facebook.gamingservices.model.ContextChooseContent$CREATOR)
.class public final Lcom/facebook/gamingservices/model/ContextChooseContent$CREATOR;
.super Ljava/lang/Object;
.source "ContextChooseContent.kt"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/gamingservices/model/ContextChooseContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CREATOR"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/facebook/gamingservices/model/ContextChooseContent;",
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

    invoke-direct {p0}, Lcom/facebook/gamingservices/model/ContextChooseContent$CREATOR;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/facebook/gamingservices/model/ContextChooseContent;
    .registers 3

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/facebook/gamingservices/model/ContextChooseContent;

    invoke-direct {v0, p1}, Lcom/facebook/gamingservices/model/ContextChooseContent;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/facebook/gamingservices/model/ContextChooseContent$CREATOR;->createFromParcel(Landroid/os/Parcel;)Lcom/facebook/gamingservices/model/ContextChooseContent;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/facebook/gamingservices/model/ContextChooseContent;
    .registers 2

    .line 2
    new-array p1, p1, [Lcom/facebook/gamingservices/model/ContextChooseContent;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/facebook/gamingservices/model/ContextChooseContent$CREATOR;->newArray(I)[Lcom/facebook/gamingservices/model/ContextChooseContent;

    move-result-object p1

    return-object p1
.end method
