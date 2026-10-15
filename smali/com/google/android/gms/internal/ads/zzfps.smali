###### Class com.google.android.gms.internal.ads.zzfps (com.google.android.gms.internal.ads.zzfps)
.class final Lcom/google/android/gms/internal/ads/zzfps;
.super Lcom/google/android/gms/internal/ads/zzfpg;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final o:Ljava/lang/Object;

.field private p:I

.field final synthetic q:Lcom/google/android/gms/internal/ads/zzfpu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfpu;I)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfps;->q:Lcom/google/android/gms/internal/ads/zzfpu;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfpg;-><init>()V

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfpu;->q:[Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    aget-object p1, p1, p2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfps;->o:Ljava/lang/Object;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzfps;->p:I

    return-void
.end method

.method private final a()V
    .registers 4

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfps;->p:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_22

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfps;->q:Lcom/google/android/gms/internal/ads/zzfpu;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfpu;->size()I

    move-result v1

    if-ge v0, v1, :cond_22

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfps;->o:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfps;->q:Lcom/google/android/gms/internal/ads/zzfpu;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzfps;->p:I

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzfpu;->q:[Ljava/lang/Object;

    .line 2
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    aget-object v1, v1, v2

    .line 4
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfnp;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    goto :goto_22

    :cond_21
    return-void

    :cond_22
    :goto_22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfps;->q:Lcom/google/android/gms/internal/ads/zzfpu;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfps;->o:Ljava/lang/Object;

    .line 5
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfpu;->c(Lcom/google/android/gms/internal/ads/zzfpu;Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzfps;->p:I

    return-void
.end method


# virtual methods
.method public final getKey()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfps;->o:Ljava/lang/Object;

    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfps;->q:Lcom/google/android/gms/internal/ads/zzfpu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfpu;->l()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfps;->o:Ljava/lang/Object;

    .line 2
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 3
    :cond_f
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfps;->a()V

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfps;->p:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_19

    const/4 v0, 0x0

    return-object v0

    :cond_19
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfps;->q:Lcom/google/android/gms/internal/ads/zzfpu;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzfpu;->r:[Ljava/lang/Object;

    .line 4
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    aget-object v0, v1, v0

    return-object v0
.end method

.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfps;->q:Lcom/google/android/gms/internal/ads/zzfpu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfpu;->l()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfps;->o:Ljava/lang/Object;

    .line 2
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3
    :cond_f
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfps;->a()V

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfps;->p:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_20

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfps;->q:Lcom/google/android/gms/internal/ads/zzfpu;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfps;->o:Ljava/lang/Object;

    .line 4
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzfpu;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    return-object p1

    :cond_20
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfps;->q:Lcom/google/android/gms/internal/ads/zzfpu;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzfpu;->r:[Ljava/lang/Object;

    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    aget-object v2, v1, v0

    .line 7
    aput-object p1, v1, v0

    return-object v2
.end method
