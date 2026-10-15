###### Class i8.a (i8.a)
.class public Li8/a;
.super Ljava/lang/Object;
.source "LevelDownloadBroadcast.java"


# instance fields
.field private a:Lcom/tebakgambar/model/Level;

.field private b:J

.field private c:J

.field private d:Z

.field private e:Z

.field private f:F


# direct methods
.method public constructor <init>(Lcom/tebakgambar/model/Level;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    .line 2
    iput v0, p0, Li8/a;->f:F

    .line 3
    iput-object p1, p0, Li8/a;->a:Lcom/tebakgambar/model/Level;

    return-void
.end method

.method public constructor <init>(Lcom/tebakgambar/model/Level;Landroid/content/Intent;)V
    .registers 6

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    .line 5
    iput v0, p0, Li8/a;->f:F

    const-string v1, "success"

    const/4 v2, 0x0

    .line 6
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Li8/a;->e:Z

    const-string v1, "finished"

    .line 7
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Li8/a;->d:Z

    const-string v1, "percentage"

    .line 8
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result p2

    iput p2, p0, Li8/a;->f:F

    .line 9
    iput-object p1, p0, Li8/a;->a:Lcom/tebakgambar/model/Level;

    return-void
.end method

.method public static c(I)Landroid/content/IntentFilter;
    .registers 4

    .line 1
    new-instance v0, Landroid/content/IntentFilter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "levelDownload_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private f()F
    .registers 6

    .line 1
    iget-wide v0, p0, Li8/a;->c:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_b

    const/high16 v0, 0x42c80000    # 100.0f

    return v0

    .line 2
    :cond_b
    iget-wide v2, p0, Li8/a;->b:J

    div-long/2addr v2, v0

    const-wide/16 v0, 0x64

    mul-long v2, v2, v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-float v0, v0

    return v0
.end method


# virtual methods
.method public a()Lcom/tebakgambar/model/Level;
    .registers 2

    .line 1
    iget-object v0, p0, Li8/a;->a:Lcom/tebakgambar/model/Level;

    return-object v0
.end method

.method public b()F
    .registers 3

    .line 1
    iget v0, p0, Li8/a;->f:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_9

    return v0

    .line 2
    :cond_9
    invoke-direct {p0}, Li8/a;->f()F

    move-result v0

    return v0
.end method

.method public d()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Li8/a;->d:Z

    return v0
.end method

.method public e()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Li8/a;->e:Z

    return v0
.end method

.method public g(Z)V
    .registers 3

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Li8/a;->d:Z

    .line 2
    iput-boolean p1, p0, Li8/a;->e:Z

    return-void
.end method

.method public h()Landroid/content/Intent;
    .registers 4

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "levelDownload_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Li8/a;->a:Lcom/tebakgambar/model/Level;

    iget v2, v2, Lcom/tebakgambar/model/Level;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    invoke-direct {p0}, Li8/a;->f()F

    move-result v1

    const-string v2, "percentage"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 4
    invoke-virtual {p0}, Li8/a;->e()Z

    move-result v1

    const-string v2, "success"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5
    invoke-virtual {p0}, Li8/a;->d()Z

    move-result v1

    const-string v2, "finished"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method

.method public i(JJ)V
    .registers 5

    .line 1
    iput-wide p1, p0, Li8/a;->b:J

    .line 2
    iput-wide p3, p0, Li8/a;->c:J

    return-void
.end method
