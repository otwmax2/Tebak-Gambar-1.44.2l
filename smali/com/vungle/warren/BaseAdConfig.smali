###### Class com.vungle.warren.BaseAdConfig (com.vungle.warren.BaseAdConfig)
.class Lcom/vungle/warren/BaseAdConfig;
.super Ljava/lang/Object;
.source "BaseAdConfig.java"


# static fields
.field public static final MUTED:I = 0x1


# instance fields
.field protected a:I
    .annotation runtime Lb7/c;
        value = "settings"
    .end annotation
.end field

.field private b:Lcom/vungle/warren/AdConfig$AdSize;
    .annotation runtime Lb7/c;
        value = "adSize"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/vungle/warren/AdConfig$AdSize;)V
    .registers 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/vungle/warren/BaseAdConfig;->b:Lcom/vungle/warren/AdConfig$AdSize;

    return-void
.end method

.method public constructor <init>(Lcom/vungle/warren/BaseAdConfig;)V
    .registers 3

    .line 4
    invoke-virtual {p1}, Lcom/vungle/warren/BaseAdConfig;->getAdSize()Lcom/vungle/warren/AdConfig$AdSize;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vungle/warren/BaseAdConfig;-><init>(Lcom/vungle/warren/AdConfig$AdSize;)V

    .line 5
    invoke-virtual {p1}, Lcom/vungle/warren/BaseAdConfig;->getSettings()I

    move-result p1

    iput p1, p0, Lcom/vungle/warren/BaseAdConfig;->a:I

    return-void
.end method


# virtual methods
.method public getAdSize()Lcom/vungle/warren/AdConfig$AdSize;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/BaseAdConfig;->b:Lcom/vungle/warren/AdConfig$AdSize;

    if-nez v0, :cond_6

    sget-object v0, Lcom/vungle/warren/AdConfig$AdSize;->VUNGLE_DEFAULT:Lcom/vungle/warren/AdConfig$AdSize;

    :cond_6
    return-object v0
.end method

.method public getSettings()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/vungle/warren/BaseAdConfig;->a:I

    return v0
.end method

.method public setAdSize(Lcom/vungle/warren/AdConfig$AdSize;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/BaseAdConfig;->b:Lcom/vungle/warren/AdConfig$AdSize;

    return-void
.end method

.method public setMuted(Z)V
    .registers 2

    if-eqz p1, :cond_9

    .line 1
    iget p1, p0, Lcom/vungle/warren/BaseAdConfig;->a:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/vungle/warren/BaseAdConfig;->a:I

    goto :goto_f

    .line 2
    :cond_9
    iget p1, p0, Lcom/vungle/warren/BaseAdConfig;->a:I

    and-int/lit8 p1, p1, -0x2

    iput p1, p0, Lcom/vungle/warren/BaseAdConfig;->a:I

    :goto_f
    return-void
.end method
