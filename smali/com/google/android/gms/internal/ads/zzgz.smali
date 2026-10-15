###### Class com.google.android.gms.internal.ads.zzgz (com.google.android.gms.internal.ads.zzgz)
.class final Lcom/google/android/gms/internal/ads/zzgz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final a:Landroid/media/AudioManager;

.field private final b:Lcom/google/android/gms/internal/ads/zzgx;

.field private c:Lcom/google/android/gms/internal/ads/zzgy;

.field private d:I

.field private e:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/gms/internal/ads/zzgy;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzgz;->e:F

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgz;->a:Landroid/media/AudioManager;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzgz;->c:Lcom/google/android/gms/internal/ads/zzgy;

    .line 3
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgx;

    invoke-direct {p1, p0, p2}, Lcom/google/android/gms/internal/ads/zzgx;-><init>(Lcom/google/android/gms/internal/ads/zzgz;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgz;->b:Lcom/google/android/gms/internal/ads/zzgx;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgz;->d:I

    return-void
.end method

.method static bridge synthetic c(Lcom/google/android/gms/internal/ads/zzgz;I)V
    .registers 4

    const/4 v0, -0x3

    const/4 v1, -0x2

    if-eq p1, v0, :cond_31

    if-eq p1, v1, :cond_31

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2a

    const/4 v0, 0x1

    if-eq p1, v0, :cond_23

    .line 1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 2
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown focus change type: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AudioFocusManager"

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/zzee;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_23
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgz;->g(I)V

    .line 4
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgz;->f(I)V

    return-void

    .line 5
    :cond_2a
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgz;->f(I)V

    .line 6
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgz;->e()V

    return-void

    :cond_31
    if-eq p1, v1, :cond_38

    const/4 p1, 0x3

    .line 7
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzgz;->g(I)V

    return-void

    :cond_38
    const/4 p1, 0x0

    .line 8
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzgz;->f(I)V

    const/4 p1, 0x2

    .line 9
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzgz;->g(I)V

    return-void
.end method

.method private final e()V
    .registers 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgz;->d:I

    if-nez v0, :cond_5

    return-void

    :cond_5
    sget v0, Lcom/google/android/gms/internal/ads/zzew;->a:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_12

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgz;->a:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgz;->b:Lcom/google/android/gms/internal/ads/zzgx;

    .line 2
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    :cond_12
    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgz;->g(I)V

    return-void
.end method

.method private final f(I)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgz;->c:Lcom/google/android/gms/internal/ads/zzgy;

    if-eqz v0, :cond_15

    check-cast v0, Lcom/google/android/gms/internal/ads/zziy;

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zziy;->o:Lcom/google/android/gms/internal/ads/zzjc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzjc;->E()Z

    move-result v1

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzjc;->A(ZI)I

    move-result v2

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zziy;->o:Lcom/google/android/gms/internal/ads/zzjc;

    .line 2
    invoke-static {v0, v1, p1, v2}, Lcom/google/android/gms/internal/ads/zzjc;->X(Lcom/google/android/gms/internal/ads/zzjc;ZII)V

    :cond_15
    return-void
.end method

.method private final g(I)V
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgz;->d:I

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgz;->d:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_e

    const p1, 0x3e4ccccd    # 0.2f

    goto :goto_10

    :cond_e
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_10
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgz;->e:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_17

    return-void

    :cond_17
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgz;->e:F

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgz;->c:Lcom/google/android/gms/internal/ads/zzgy;

    if-eqz p1, :cond_24

    check-cast p1, Lcom/google/android/gms/internal/ads/zziy;

    .line 1
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zziy;->o:Lcom/google/android/gms/internal/ads/zzjc;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzjc;->U(Lcom/google/android/gms/internal/ads/zzjc;)V

    :cond_24
    return-void
.end method


# virtual methods
.method public final a()F
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgz;->e:F

    return v0
.end method

.method public final b(ZI)I
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgz;->e()V

    if-eqz p1, :cond_7

    const/4 p1, 0x1

    return p1

    :cond_7
    const/4 p1, -0x1

    return p1
.end method

.method public final d()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgz;->c:Lcom/google/android/gms/internal/ads/zzgy;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgz;->e()V

    return-void
.end method
