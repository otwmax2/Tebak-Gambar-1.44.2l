###### Class com.google.android.gms.internal.ads.zzejl (com.google.android.gms.internal.ads.zzejl)
.class public final Lcom/google/android/gms/internal/ads/zzejl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzepn;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzfuu;

.field private final b:Lcom/google/android/gms/internal/ads/zzeyx;

.field private final c:Lcom/google/android/gms/internal/ads/zzezj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfuu;Lcom/google/android/gms/internal/ads/zzeyx;Lcom/google/android/gms/internal/ads/zzezj;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzejl;->a:Lcom/google/android/gms/internal/ads/zzfuu;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzejl;->b:Lcom/google/android/gms/internal/ads/zzeyx;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzejl;->c:Lcom/google/android/gms/internal/ads/zzezj;

    return-void
.end method


# virtual methods
.method final synthetic a()Lcom/google/android/gms/internal/ads/zzejm;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzejm;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbar;->L6:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v1

    .line 3
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_29

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzejl;->b:Lcom/google/android/gms/internal/ads/zzeyx;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzeyx;->d:Lcom/google/android/gms/ads/internal/client/zzl;

    .line 4
    invoke-static {v1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzf;->b(Lcom/google/android/gms/ads/internal/client/zzl;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "requester_type_2"

    .line 5
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzezj;->a()Ljava/lang/String;

    move-result-object v2

    :cond_29
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzejm;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final zza()I
    .registers 2

    const/4 v0, 0x5

    return v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzfut;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzejl;->a:Lcom/google/android/gms/internal/ads/zzfuu;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzejk;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzejk;-><init>(Lcom/google/android/gms/internal/ads/zzejl;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzfuu;->e(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzfut;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.android.gms.internal.ads.zzejk (com.google.android.gms.internal.ads.zzejk)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzejk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/ads/zzejl;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzejl;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzejk;->a:Lcom/google/android/gms/internal/ads/zzejl;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzejk;->a:Lcom/google/android/gms/internal/ads/zzejl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzejl;->a()Lcom/google/android/gms/internal/ads/zzejm;

    move-result-object v0

    return-object v0
.end method
