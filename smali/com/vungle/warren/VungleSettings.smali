###### Class com.vungle.warren.VungleSettings (com.vungle.warren.VungleSettings)
.class public final Lcom/vungle/warren/VungleSettings;
.super Ljava/lang/Object;
.source "VungleSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/warren/VungleSettings$Builder;
    }
.end annotation


# instance fields
.field private final a:J

.field private final b:J

.field private final c:Z

.field private final d:J

.field private final e:Z


# direct methods
.method private constructor <init>(Lcom/vungle/warren/VungleSettings$Builder;)V
    .registers 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/vungle/warren/VungleSettings$Builder;->a(Lcom/vungle/warren/VungleSettings$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vungle/warren/VungleSettings;->b:J

    .line 4
    invoke-static {p1}, Lcom/vungle/warren/VungleSettings$Builder;->b(Lcom/vungle/warren/VungleSettings$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vungle/warren/VungleSettings;->a:J

    .line 5
    invoke-static {p1}, Lcom/vungle/warren/VungleSettings$Builder;->c(Lcom/vungle/warren/VungleSettings$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/vungle/warren/VungleSettings;->c:Z

    .line 6
    invoke-static {p1}, Lcom/vungle/warren/VungleSettings$Builder;->d(Lcom/vungle/warren/VungleSettings$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/vungle/warren/VungleSettings;->e:Z

    .line 7
    invoke-static {p1}, Lcom/vungle/warren/VungleSettings$Builder;->e(Lcom/vungle/warren/VungleSettings$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vungle/warren/VungleSettings;->d:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/vungle/warren/VungleSettings$Builder;Lcom/vungle/warren/VungleSettings$1;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lcom/vungle/warren/VungleSettings;-><init>(Lcom/vungle/warren/VungleSettings$Builder;)V

    return-void
.end method


# virtual methods
.method public getAndroidIdOptOut()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/vungle/warren/VungleSettings;->c:Z

    return v0
.end method

.method public getBannerRefreshDisabled()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/vungle/warren/VungleSettings;->e:Z

    return v0
.end method

.method public getMaximumStorageForCleverCache()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/vungle/warren/VungleSettings;->d:J

    return-wide v0
.end method

.method public getMinimumSpaceForAd()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/vungle/warren/VungleSettings;->b:J

    return-wide v0
.end method

.method public getMinimumSpaceForInit()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/vungle/warren/VungleSettings;->a:J

    return-wide v0
.end method

###### Class com.vungle.warren.VungleSettings.AnonymousClass1 (com.vungle.warren.VungleSettings$1)
.class synthetic Lcom/vungle/warren/VungleSettings$1;
.super Ljava/lang/Object;
.source "VungleSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/VungleSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.vungle.warren.VungleSettings.Builder (com.vungle.warren.VungleSettings$Builder)
.class public Lcom/vungle/warren/VungleSettings$Builder;
.super Ljava/lang/Object;
.source "VungleSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/VungleSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private a:J

.field private b:J

.field private c:Z

.field private d:J

.field private e:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0x3300000

    .line 2
    iput-wide v0, p0, Lcom/vungle/warren/VungleSettings$Builder;->a:J

    const-wide/32 v0, 0x3200000

    .line 3
    iput-wide v0, p0, Lcom/vungle/warren/VungleSettings$Builder;->b:J

    const-wide/32 v0, 0x6400000

    .line 4
    iput-wide v0, p0, Lcom/vungle/warren/VungleSettings$Builder;->d:J

    return-void
.end method

.method static synthetic a(Lcom/vungle/warren/VungleSettings$Builder;)J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/vungle/warren/VungleSettings$Builder;->b:J

    return-wide v0
.end method

.method static synthetic b(Lcom/vungle/warren/VungleSettings$Builder;)J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/vungle/warren/VungleSettings$Builder;->a:J

    return-wide v0
.end method

.method static synthetic c(Lcom/vungle/warren/VungleSettings$Builder;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/vungle/warren/VungleSettings$Builder;->c:Z

    return p0
.end method

.method static synthetic d(Lcom/vungle/warren/VungleSettings$Builder;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/vungle/warren/VungleSettings$Builder;->e:Z

    return p0
.end method

.method static synthetic e(Lcom/vungle/warren/VungleSettings$Builder;)J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/vungle/warren/VungleSettings$Builder;->d:J

    return-wide v0
.end method


# virtual methods
.method public build()Lcom/vungle/warren/VungleSettings;
    .registers 3

    .line 1
    new-instance v0, Lcom/vungle/warren/VungleSettings;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/vungle/warren/VungleSettings;-><init>(Lcom/vungle/warren/VungleSettings$Builder;Lcom/vungle/warren/VungleSettings$1;)V

    return-object v0
.end method

.method public disableBannerRefresh()Lcom/vungle/warren/VungleSettings$Builder;
    .registers 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/vungle/warren/VungleSettings$Builder;->e:Z

    return-object p0
.end method

.method public setAndroidIdOptOut(Z)Lcom/vungle/warren/VungleSettings$Builder;
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/vungle/warren/VungleSettings$Builder;->c:Z

    return-object p0
.end method

.method public setMaximumStorageForCleverCache(J)Lcom/vungle/warren/VungleSettings$Builder;
    .registers 3

    .line 1
    iput-wide p1, p0, Lcom/vungle/warren/VungleSettings$Builder;->d:J

    return-object p0
.end method

.method public setMinimumSpaceForAd(J)Lcom/vungle/warren/VungleSettings$Builder;
    .registers 3

    .line 1
    iput-wide p1, p0, Lcom/vungle/warren/VungleSettings$Builder;->b:J

    return-object p0
.end method

.method public setMinimumSpaceForInit(J)Lcom/vungle/warren/VungleSettings$Builder;
    .registers 3

    .line 1
    iput-wide p1, p0, Lcom/vungle/warren/VungleSettings$Builder;->a:J

    return-object p0
.end method
