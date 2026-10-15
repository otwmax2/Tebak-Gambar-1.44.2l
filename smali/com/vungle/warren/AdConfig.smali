###### Class com.vungle.warren.AdConfig (com.vungle.warren.AdConfig)
.class public Lcom/vungle/warren/AdConfig;
.super Lcom/vungle/warren/BaseAdConfig;
.source "AdConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/warren/AdConfig$Orientation;,
        Lcom/vungle/warren/AdConfig$AdSize;,
        Lcom/vungle/warren/AdConfig$Settings;
    }
.end annotation


# static fields
.field public static final AUTO_ROTATE:I = 0x2

.field public static final IMMEDIATE_BACK:I = 0x2

.field public static final IMMERSIVE:I = 0x4

.field public static final LANDSCAPE:I = 0x1

.field public static final MATCH_VIDEO:I = 0x3

.field public static final PORTRAIT:I = 0x0

.field public static final TRANSITION_ANIMATE:I = 0x8


# instance fields
.field private c:I
    .annotation runtime Lb7/c;
        value = "ordinal"
    .end annotation
.end field

.field private d:I
    .annotation runtime Lb7/c;
        value = "adOrientation"
    .end annotation

    .annotation build Lcom/vungle/warren/AdConfig$Orientation;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/vungle/warren/BaseAdConfig;-><init>()V

    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lcom/vungle/warren/AdConfig;->d:I

    return-void
.end method

.method public constructor <init>(Lcom/vungle/warren/AdConfig$AdSize;)V
    .registers 2

    .line 3
    invoke-direct {p0, p1}, Lcom/vungle/warren/BaseAdConfig;-><init>(Lcom/vungle/warren/AdConfig$AdSize;)V

    const/4 p1, 0x2

    .line 4
    iput p1, p0, Lcom/vungle/warren/AdConfig;->d:I

    return-void
.end method

.method public constructor <init>(Lcom/vungle/warren/BaseAdConfig;)V
    .registers 2

    .line 5
    invoke-direct {p0, p1}, Lcom/vungle/warren/BaseAdConfig;-><init>(Lcom/vungle/warren/BaseAdConfig;)V

    const/4 p1, 0x2

    .line 6
    iput p1, p0, Lcom/vungle/warren/AdConfig;->d:I

    return-void
.end method


# virtual methods
.method public getAdOrientation()I
    .registers 2
    .annotation build Lcom/vungle/warren/AdConfig$Orientation;
    .end annotation

    .line 1
    iget v0, p0, Lcom/vungle/warren/AdConfig;->d:I

    return v0
.end method

.method public bridge synthetic getAdSize()Lcom/vungle/warren/AdConfig$AdSize;
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/vungle/warren/BaseAdConfig;->getAdSize()Lcom/vungle/warren/AdConfig$AdSize;

    move-result-object v0

    return-object v0
.end method

.method public getOrdinal()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/vungle/warren/AdConfig;->c:I

    return v0
.end method

.method public bridge synthetic getSettings()I
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/vungle/warren/BaseAdConfig;->getSettings()I

    move-result v0

    return v0
.end method

.method public setAdOrientation(I)V
    .registers 2
    .param p1    # I
        .annotation build Lcom/vungle/warren/AdConfig$Orientation;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/vungle/warren/AdConfig;->d:I

    return-void
.end method

.method public bridge synthetic setAdSize(Lcom/vungle/warren/AdConfig$AdSize;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/vungle/warren/BaseAdConfig;->setAdSize(Lcom/vungle/warren/AdConfig$AdSize;)V

    return-void
.end method

.method public setBackButtonImmediatelyEnabled(Z)V
    .registers 2

    if-eqz p1, :cond_9

    .line 1
    iget p1, p0, Lcom/vungle/warren/BaseAdConfig;->a:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/vungle/warren/BaseAdConfig;->a:I

    goto :goto_f

    .line 2
    :cond_9
    iget p1, p0, Lcom/vungle/warren/BaseAdConfig;->a:I

    and-int/lit8 p1, p1, -0x3

    iput p1, p0, Lcom/vungle/warren/BaseAdConfig;->a:I

    :goto_f
    return-void
.end method

.method public setImmersiveMode(Z)V
    .registers 2

    if-eqz p1, :cond_9

    .line 1
    iget p1, p0, Lcom/vungle/warren/BaseAdConfig;->a:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/vungle/warren/BaseAdConfig;->a:I

    goto :goto_f

    .line 2
    :cond_9
    iget p1, p0, Lcom/vungle/warren/BaseAdConfig;->a:I

    and-int/lit8 p1, p1, -0x5

    iput p1, p0, Lcom/vungle/warren/BaseAdConfig;->a:I

    :goto_f
    return-void
.end method

.method public bridge synthetic setMuted(Z)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/vungle/warren/BaseAdConfig;->setMuted(Z)V

    return-void
.end method

.method public setOrdinal(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/vungle/warren/AdConfig;->c:I

    return-void
.end method

.method public setTransitionAnimationEnabled(Z)V
    .registers 2

    if-eqz p1, :cond_9

    .line 1
    iget p1, p0, Lcom/vungle/warren/BaseAdConfig;->a:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/vungle/warren/BaseAdConfig;->a:I

    goto :goto_f

    .line 2
    :cond_9
    iget p1, p0, Lcom/vungle/warren/BaseAdConfig;->a:I

    and-int/lit8 p1, p1, -0x9

    iput p1, p0, Lcom/vungle/warren/BaseAdConfig;->a:I

    :goto_f
    return-void
.end method

###### Class com.vungle.warren.AdConfig.AdSize (com.vungle.warren.AdConfig$AdSize)
.class public final enum Lcom/vungle/warren/AdConfig$AdSize;
.super Ljava/lang/Enum;
.source "AdConfig.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/AdConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AdSize"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/vungle/warren/AdConfig$AdSize;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/vungle/warren/AdConfig$AdSize;

.field public static final enum BANNER:Lcom/vungle/warren/AdConfig$AdSize;

.field public static final enum BANNER_LEADERBOARD:Lcom/vungle/warren/AdConfig$AdSize;

.field public static final enum BANNER_SHORT:Lcom/vungle/warren/AdConfig$AdSize;

.field public static final enum VUNGLE_DEFAULT:Lcom/vungle/warren/AdConfig$AdSize;

.field public static final enum VUNGLE_MREC:Lcom/vungle/warren/AdConfig$AdSize;


# instance fields
.field private final height:I

.field private final name:Ljava/lang/String;

.field private final width:I


# direct methods
.method static constructor <clinit>()V
    .registers 19

    .line 1
    new-instance v6, Lcom/vungle/warren/AdConfig$AdSize;

    const-string v1, "VUNGLE_MREC"

    const/4 v2, 0x0

    const-string v3, "mrec"

    const/16 v4, 0x12c

    const/16 v5, 0xfa

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/vungle/warren/AdConfig$AdSize;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v6, Lcom/vungle/warren/AdConfig$AdSize;->VUNGLE_MREC:Lcom/vungle/warren/AdConfig$AdSize;

    .line 2
    new-instance v0, Lcom/vungle/warren/AdConfig$AdSize;

    const-string v8, "VUNGLE_DEFAULT"

    const/4 v9, 0x1

    const-string v10, "default"

    const/4 v11, -0x1

    const/4 v12, -0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/vungle/warren/AdConfig$AdSize;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v0, Lcom/vungle/warren/AdConfig$AdSize;->VUNGLE_DEFAULT:Lcom/vungle/warren/AdConfig$AdSize;

    .line 3
    new-instance v1, Lcom/vungle/warren/AdConfig$AdSize;

    const-string v14, "BANNER"

    const/4 v15, 0x2

    const-string v16, "banner"

    const/16 v17, 0x140

    const/16 v18, 0x32

    move-object v13, v1

    invoke-direct/range {v13 .. v18}, Lcom/vungle/warren/AdConfig$AdSize;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v1, Lcom/vungle/warren/AdConfig$AdSize;->BANNER:Lcom/vungle/warren/AdConfig$AdSize;

    .line 4
    new-instance v2, Lcom/vungle/warren/AdConfig$AdSize;

    const-string v8, "BANNER_SHORT"

    const/4 v9, 0x3

    const-string v10, "banner_short"

    const/16 v11, 0x12c

    const/16 v12, 0x32

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Lcom/vungle/warren/AdConfig$AdSize;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v2, Lcom/vungle/warren/AdConfig$AdSize;->BANNER_SHORT:Lcom/vungle/warren/AdConfig$AdSize;

    .line 5
    new-instance v3, Lcom/vungle/warren/AdConfig$AdSize;

    const-string v14, "BANNER_LEADERBOARD"

    const/4 v15, 0x4

    const-string v16, "banner_leaderboard"

    const/16 v17, 0x2d8

    const/16 v18, 0x5a

    move-object v13, v3

    invoke-direct/range {v13 .. v18}, Lcom/vungle/warren/AdConfig$AdSize;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v3, Lcom/vungle/warren/AdConfig$AdSize;->BANNER_LEADERBOARD:Lcom/vungle/warren/AdConfig$AdSize;

    const/4 v4, 0x5

    new-array v4, v4, [Lcom/vungle/warren/AdConfig$AdSize;

    const/4 v5, 0x0

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    const/4 v0, 0x2

    aput-object v1, v4, v0

    const/4 v0, 0x3

    aput-object v2, v4, v0

    const/4 v0, 0x4

    aput-object v3, v4, v0

    .line 6
    sput-object v4, Lcom/vungle/warren/AdConfig$AdSize;->$VALUES:[Lcom/vungle/warren/AdConfig$AdSize;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;II)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p4, p0, Lcom/vungle/warren/AdConfig$AdSize;->width:I

    .line 3
    iput p5, p0, Lcom/vungle/warren/AdConfig$AdSize;->height:I

    .line 4
    iput-object p3, p0, Lcom/vungle/warren/AdConfig$AdSize;->name:Ljava/lang/String;

    return-void
.end method

.method public static fromName(Ljava/lang/String;)Lcom/vungle/warren/AdConfig$AdSize;
    .registers 6

    .line 1
    invoke-static {}, Lcom/vungle/warren/AdConfig$AdSize;->values()[Lcom/vungle/warren/AdConfig$AdSize;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_16

    aget-object v3, v0, v2

    .line 2
    iget-object v4, v3, Lcom/vungle/warren/AdConfig$AdSize;->name:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    return-object v3

    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 3
    :cond_16
    sget-object p0, Lcom/vungle/warren/AdConfig$AdSize;->VUNGLE_DEFAULT:Lcom/vungle/warren/AdConfig$AdSize;

    return-object p0
.end method

.method public static isBannerAdSize(Lcom/vungle/warren/AdConfig$AdSize;)Z
    .registers 2

    .line 1
    sget-object v0, Lcom/vungle/warren/AdConfig$AdSize;->BANNER:Lcom/vungle/warren/AdConfig$AdSize;

    if-eq p0, v0, :cond_13

    sget-object v0, Lcom/vungle/warren/AdConfig$AdSize;->BANNER_LEADERBOARD:Lcom/vungle/warren/AdConfig$AdSize;

    if-eq p0, v0, :cond_13

    sget-object v0, Lcom/vungle/warren/AdConfig$AdSize;->BANNER_SHORT:Lcom/vungle/warren/AdConfig$AdSize;

    if-eq p0, v0, :cond_13

    sget-object v0, Lcom/vungle/warren/AdConfig$AdSize;->VUNGLE_MREC:Lcom/vungle/warren/AdConfig$AdSize;

    if-ne p0, v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p0, 0x1

    :goto_14
    return p0
.end method

.method public static isDefaultAdSize(Lcom/vungle/warren/AdConfig$AdSize;)Z
    .registers 2

    .line 1
    sget-object v0, Lcom/vungle/warren/AdConfig$AdSize;->VUNGLE_DEFAULT:Lcom/vungle/warren/AdConfig$AdSize;

    if-eq p0, v0, :cond_b

    sget-object v0, Lcom/vungle/warren/AdConfig$AdSize;->VUNGLE_MREC:Lcom/vungle/warren/AdConfig$AdSize;

    if-ne p0, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p0, 0x1

    :goto_c
    return p0
.end method

.method public static isNonMrecBannerAdSize(Lcom/vungle/warren/AdConfig$AdSize;)Z
    .registers 2

    .line 1
    sget-object v0, Lcom/vungle/warren/AdConfig$AdSize;->VUNGLE_MREC:Lcom/vungle/warren/AdConfig$AdSize;

    if-eq p0, v0, :cond_c

    invoke-static {p0}, Lcom/vungle/warren/AdConfig$AdSize;->isBannerAdSize(Lcom/vungle/warren/AdConfig$AdSize;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vungle/warren/AdConfig$AdSize;
    .registers 2

    .line 1
    const-class v0, Lcom/vungle/warren/AdConfig$AdSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/vungle/warren/AdConfig$AdSize;

    return-object p0
.end method

.method public static values()[Lcom/vungle/warren/AdConfig$AdSize;
    .registers 1

    .line 1
    sget-object v0, Lcom/vungle/warren/AdConfig$AdSize;->$VALUES:[Lcom/vungle/warren/AdConfig$AdSize;

    invoke-virtual {v0}, [Lcom/vungle/warren/AdConfig$AdSize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vungle/warren/AdConfig$AdSize;

    return-object v0
.end method


# virtual methods
.method public getHeight()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/vungle/warren/AdConfig$AdSize;->height:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/AdConfig$AdSize;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/vungle/warren/AdConfig$AdSize;->width:I

    return v0
.end method

###### Class com.vungle.warren.AdConfig.Orientation (com.vungle.warren.AdConfig$Orientation)
.class public interface abstract annotation Lcom/vungle/warren/AdConfig$Orientation;
.super Ljava/lang/Object;
.source "AdConfig.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/AdConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "Orientation"
.end annotation

###### Class com.vungle.warren.AdConfig.Settings (com.vungle.warren.AdConfig$Settings)
.class public interface abstract annotation Lcom/vungle/warren/AdConfig$Settings;
.super Ljava/lang/Object;
.source "AdConfig.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/AdConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "Settings"
.end annotation
