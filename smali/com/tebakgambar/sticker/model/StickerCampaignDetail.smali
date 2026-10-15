###### Class com.tebakgambar.sticker.model.StickerCampaignDetail (com.tebakgambar.sticker.model.StickerCampaignDetail)
.class public Lcom/tebakgambar/sticker/model/StickerCampaignDetail;
.super Ljava/lang/Object;
.source "StickerCampaignDetail.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tebakgambar/sticker/model/StickerCampaignDetail$Term;,
        Lcom/tebakgambar/sticker/model/StickerCampaignDetail$Button;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/tebakgambar/sticker/model/StickerCampaignDetail;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public backgroundColor:Ljava/lang/String;
    .annotation runtime Lb7/c;
        value = "background_color"
    .end annotation
.end field

.field public bannerImageUrl:Ljava/lang/String;
    .annotation runtime Lb7/c;
        value = "banner_image_url"
    .end annotation
.end field

.field public claimButton:Lcom/tebakgambar/sticker/model/StickerCampaignDetail$Button;
    .annotation runtime Lb7/c;
        value = "claim_button"
    .end annotation
.end field

.field public id:I

.field public isNeedLogin:Z
    .annotation runtime Lb7/c;
        value = "need_login"
    .end annotation
.end field

.field public shareButton:Lcom/tebakgambar/sticker/model/StickerCampaignDetail$Button;
    .annotation runtime Lb7/c;
        value = "share_button"
    .end annotation
.end field

.field public shareText:Ljava/lang/String;
    .annotation runtime Lb7/c;
        value = "share_text"
    .end annotation
.end field

.field public stickerBundle:Lcom/tebakgambar/sticker/model/StickerBundle;
    .annotation runtime Lb7/c;
        value = "sticker_bundle"
    .end annotation
.end field

.field public term:Lcom/tebakgambar/sticker/model/StickerCampaignDetail$Term;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/tebakgambar/sticker/model/StickerCampaignDetail$1;

    invoke-direct {v0}, Lcom/tebakgambar/sticker/model/StickerCampaignDetail$1;-><init>()V

    sput-object v0, Lcom/tebakgambar/sticker/model/StickerCampaignDetail;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tebakgambar/sticker/model/StickerCampaignDetail;->id:I

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tebakgambar/sticker/model/StickerCampaignDetail;->backgroundColor:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tebakgambar/sticker/model/StickerCampaignDetail;->bannerImageUrl:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tebakgambar/sticker/model/StickerCampaignDetail;->shareText:Ljava/lang/String;

    .line 6
    const-class v0, Lcom/tebakgambar/sticker/model/StickerCampaignDetail$Term;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/tebakgambar/sticker/model/StickerCampaignDetail$Term;

    iput-object v0, p0, Lcom/tebakgambar/sticker/model/StickerCampaignDetail;->term:Lcom/tebakgambar/sticker/model/StickerCampaignDetail$Term;

    .line 7
    const-class v0, Lcom/tebakgambar/sticker/model/StickerBundle;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/tebakgambar/sticker/model/StickerBundle;

    iput-object v0, p0, Lcom/tebakgambar/sticker/model/StickerCampaignDetail;->stickerBundle:Lcom/tebakgambar/sticker/model/StickerBundle;

    .line 8
    const-class v0, Lcom/tebakgambar/sticker/model/StickerCampaignDetail$Button;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/tebakgambar/sticker/model/StickerCampaignDetail$Button;

    iput-object v0, p0, Lcom/tebakgambar/sticker/model/StickerCampaignDetail;->claimButton:Lcom/tebakgambar/sticker/model/StickerCampaignDetail$Button;

    .line 9
    const-class v0, Lcom/tebakgambar/sticker/model/StickerCampaignDetail$Button;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/tebakgambar/sticker/model/StickerCampaignDetail$Button;

    iput-object v0, p0, Lcom/tebakgambar/sticker/model/StickerCampaignDetail;->shareButton:Lcom/tebakgambar/sticker/model/StickerCampaignDetail$Button;

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_5b

    goto :goto_5c

    :cond_5b
    const/4 v0, 0x0

    :goto_5c
    iput-boolean v0, p0, Lcom/tebakgambar/sticker/model/StickerCampaignDetail;->isNeedLogin:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getBackgroundColor(Landroid/content/Context;)I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/sticker/model/StickerCampaignDetail;->backgroundColor:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 2
    :try_start_8
    iget-object v0, p0, Lcom/tebakgambar/sticker/model/StickerCampaignDetail;->backgroundColor:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_e} :catch_f

    return p1

    :catch_f
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 4
    :cond_13
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f06003c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    return p1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 1
    iget v0, p0, Lcom/tebakgambar/sticker/model/StickerCampaignDetail;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget-object v0, p0, Lcom/tebakgambar/sticker/model/StickerCampaignDetail;->backgroundColor:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/tebakgambar/sticker/model/StickerCampaignDetail;->bannerImageUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/tebakgambar/sticker/model/StickerCampaignDetail;->shareText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/tebakgambar/sticker/model/StickerCampaignDetail;->term:Lcom/tebakgambar/sticker/model/StickerCampaignDetail$Term;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 6
    iget-object v0, p0, Lcom/tebakgambar/sticker/model/StickerCampaignDetail;->stickerBundle:Lcom/tebakgambar/sticker/model/StickerBundle;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 7
    iget-object v0, p0, Lcom/tebakgambar/sticker/model/StickerCampaignDetail;->claimButton:Lcom/tebakgambar/sticker/model/StickerCampaignDetail$Button;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 8
    iget-object v0, p0, Lcom/tebakgambar/sticker/model/StickerCampaignDetail;->shareButton:Lcom/tebakgambar/sticker/model/StickerCampaignDetail$Button;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 9
    iget-boolean p2, p0, Lcom/tebakgambar/sticker/model/StickerCampaignDetail;->isNeedLogin:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

###### Class com.tebakgambar.sticker.model.StickerCampaignDetail.AnonymousClass1 (com.tebakgambar.sticker.model.StickerCampaignDetail$1)
.class Lcom/tebakgambar/sticker/model/StickerCampaignDetail$1;
.super Ljava/lang/Object;
.source "StickerCampaignDetail.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tebakgambar/sticker/model/StickerCampaignDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/tebakgambar/sticker/model/StickerCampaignDetail;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/tebakgambar/sticker/model/StickerCampaignDetail;
    .registers 3

    .line 2
    new-instance v0, Lcom/tebakgambar/sticker/model/StickerCampaignDetail;

    invoke-direct {v0, p1}, Lcom/tebakgambar/sticker/model/StickerCampaignDetail;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/tebakgambar/sticker/model/StickerCampaignDetail$1;->createFromParcel(Landroid/os/Parcel;)Lcom/tebakgambar/sticker/model/StickerCampaignDetail;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/tebakgambar/sticker/model/StickerCampaignDetail;
    .registers 2

    .line 2
    new-array p1, p1, [Lcom/tebakgambar/sticker/model/StickerCampaignDetail;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/tebakgambar/sticker/model/StickerCampaignDetail$1;->newArray(I)[Lcom/tebakgambar/sticker/model/StickerCampaignDetail;

    move-result-object p1

    return-object p1
.end method

###### Class com.tebakgambar.sticker.model.StickerCampaignDetail.Button (com.tebakgambar.sticker.model.StickerCampaignDetail$Button)
.class public Lcom/tebakgambar/sticker/model/StickerCampaignDetail$Button;
.super Ljava/lang/Object;
.source "StickerCampaignDetail.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tebakgambar/sticker/model/StickerCampaignDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Button"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/tebakgambar/sticker/model/StickerCampaignDetail$Button;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public backgroundColor:Ljava/lang/String;
    .annotation runtime Lb7/c;
        value = "background_color"
    .end annotation
.end field

.field public textColor:Ljava/lang/String;
    .annotation runtime Lb7/c;
        value = "text_color"
    .end annotation
.end field

.field public title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/tebakgambar/sticker/model/StickerCampaignDetail$Button$1;

    invoke-direct {v0}, Lcom/tebakgambar/sticker/model/StickerCampaignDetail$Button$1;-><init>()V

    sput-object v0, Lcom/tebakgambar/sticker/model/StickerCampaignDetail$Button;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tebakgambar/sticker/model/StickerCampaignDetail$Button;->backgroundColor:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tebakgambar/sticker/model/StickerCampaignDetail$Button;->title:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tebakgambar/sticker/model/StickerCampaignDetail$Button;->textColor:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getBackgroundColor(Landroid/content/Context;)I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/sticker/model/StickerCampaignDetail$Button;->backgroundColor:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 2
    :try_start_8
    iget-object v0, p0, Lcom/tebakgambar/sticker/model/StickerCampaignDetail$Button;->backgroundColor:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_e} :catch_f

    return p1

    :catch_f
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 4
    :cond_13
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f06003c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    return p1
.end method

.method public getTextColor(Landroid/content/Context;)I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/sticker/model/StickerCampaignDetail$Button;->textColor:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 2
    :try_start_8
    iget-object v0, p0, Lcom/tebakgambar/sticker/model/StickerCampaignDetail$Button;->textColor:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_e} :catch_f

    return p1

    :catch_f
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 4
    :cond_13
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f06003c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    return p1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 1
    iget-object p2, p0, Lcom/tebakgambar/sticker/model/StickerCampaignDetail$Button;->backgroundColor:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/tebakgambar/sticker/model/StickerCampaignDetail$Button;->title:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lcom/tebakgambar/sticker/model/StickerCampaignDetail$Button;->textColor:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method

###### Class com.tebakgambar.sticker.model.StickerCampaignDetail.Button.AnonymousClass1 (com.tebakgambar.sticker.model.StickerCampaignDetail$Button$1)
.class Lcom/tebakgambar/sticker/model/StickerCampaignDetail$Button$1;
.super Ljava/lang/Object;
.source "StickerCampaignDetail.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tebakgambar/sticker/model/StickerCampaignDetail$Button;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/tebakgambar/sticker/model/StickerCampaignDetail$Button;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/tebakgambar/sticker/model/StickerCampaignDetail$Button;
    .registers 3

    .line 2
    new-instance v0, Lcom/tebakgambar/sticker/model/StickerCampaignDetail$Button;

    invoke-direct {v0, p1}, Lcom/tebakgambar/sticker/model/StickerCampaignDetail$Button;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/tebakgambar/sticker/model/StickerCampaignDetail$Button$1;->createFromParcel(Landroid/os/Parcel;)Lcom/tebakgambar/sticker/model/StickerCampaignDetail$Button;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/tebakgambar/sticker/model/StickerCampaignDetail$Button;
    .registers 2

    .line 2
    new-array p1, p1, [Lcom/tebakgambar/sticker/model/StickerCampaignDetail$Button;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/tebakgambar/sticker/model/StickerCampaignDetail$Button$1;->newArray(I)[Lcom/tebakgambar/sticker/model/StickerCampaignDetail$Button;

    move-result-object p1

    return-object p1
.end method

###### Class com.tebakgambar.sticker.model.StickerCampaignDetail.Term (com.tebakgambar.sticker.model.StickerCampaignDetail$Term)
.class public Lcom/tebakgambar/sticker/model/StickerCampaignDetail$Term;
.super Ljava/lang/Object;
.source "StickerCampaignDetail.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tebakgambar/sticker/model/StickerCampaignDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Term"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/tebakgambar/sticker/model/StickerCampaignDetail$Term;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public backgroundColor:Ljava/lang/String;
    .annotation runtime Lb7/c;
        value = "background_color"
    .end annotation
.end field

.field public points:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public textColor:Ljava/lang/String;
    .annotation runtime Lb7/c;
        value = "text_color"
    .end annotation
.end field

.field public title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/tebakgambar/sticker/model/StickerCampaignDetail$Term$1;

    invoke-direct {v0}, Lcom/tebakgambar/sticker/model/StickerCampaignDetail$Term$1;-><init>()V

    sput-object v0, Lcom/tebakgambar/sticker/model/StickerCampaignDetail$Term;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tebakgambar/sticker/model/StickerCampaignDetail$Term;->backgroundColor:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tebakgambar/sticker/model/StickerCampaignDetail$Term;->title:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/tebakgambar/sticker/model/StickerCampaignDetail$Term;->points:Ljava/util/List;

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tebakgambar/sticker/model/StickerCampaignDetail$Term;->textColor:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getBackgroundColor(Landroid/content/Context;)I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/sticker/model/StickerCampaignDetail$Term;->backgroundColor:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 2
    :try_start_8
    iget-object v0, p0, Lcom/tebakgambar/sticker/model/StickerCampaignDetail$Term;->backgroundColor:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_e} :catch_f

    return p1

    :catch_f
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 4
    :cond_13
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f06003c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    return p1
.end method

.method public getTextColor(Landroid/content/Context;)I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/sticker/model/StickerCampaignDetail$Term;->textColor:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 2
    :try_start_8
    iget-object v0, p0, Lcom/tebakgambar/sticker/model/StickerCampaignDetail$Term;->textColor:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_e} :catch_f

    return p1

    :catch_f
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 4
    :cond_13
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f06003c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    return p1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 1
    iget-object p2, p0, Lcom/tebakgambar/sticker/model/StickerCampaignDetail$Term;->backgroundColor:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/tebakgambar/sticker/model/StickerCampaignDetail$Term;->title:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lcom/tebakgambar/sticker/model/StickerCampaignDetail$Term;->points:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 4
    iget-object p2, p0, Lcom/tebakgambar/sticker/model/StickerCampaignDetail$Term;->textColor:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method

###### Class com.tebakgambar.sticker.model.StickerCampaignDetail.Term.AnonymousClass1 (com.tebakgambar.sticker.model.StickerCampaignDetail$Term$1)
.class Lcom/tebakgambar/sticker/model/StickerCampaignDetail$Term$1;
.super Ljava/lang/Object;
.source "StickerCampaignDetail.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tebakgambar/sticker/model/StickerCampaignDetail$Term;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/tebakgambar/sticker/model/StickerCampaignDetail$Term;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/tebakgambar/sticker/model/StickerCampaignDetail$Term;
    .registers 3

    .line 2
    new-instance v0, Lcom/tebakgambar/sticker/model/StickerCampaignDetail$Term;

    invoke-direct {v0, p1}, Lcom/tebakgambar/sticker/model/StickerCampaignDetail$Term;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/tebakgambar/sticker/model/StickerCampaignDetail$Term$1;->createFromParcel(Landroid/os/Parcel;)Lcom/tebakgambar/sticker/model/StickerCampaignDetail$Term;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/tebakgambar/sticker/model/StickerCampaignDetail$Term;
    .registers 2

    .line 2
    new-array p1, p1, [Lcom/tebakgambar/sticker/model/StickerCampaignDetail$Term;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/tebakgambar/sticker/model/StickerCampaignDetail$Term$1;->newArray(I)[Lcom/tebakgambar/sticker/model/StickerCampaignDetail$Term;

    move-result-object p1

    return-object p1
.end method
