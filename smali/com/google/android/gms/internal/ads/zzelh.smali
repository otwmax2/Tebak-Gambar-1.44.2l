###### Class com.google.android.gms.internal.ads.zzelh (com.google.android.gms.internal.ads.zzelh)
.class public final Lcom/google/android/gms/internal/ads/zzelh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzepn;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzeva;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzeva;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzelh;->a:Lcom/google/android/gms/internal/ads/zzeva;

    return-void
.end method


# virtual methods
.method final synthetic a(Landroid/os/Bundle;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzelh;->a:Lcom/google/android/gms/internal/ads/zzeva;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeva;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "key_schema"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final zza()I
    .registers 2

    const/16 v0, 0xf

    return v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzfut;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzelh;->a:Lcom/google/android/gms/internal/ads/zzeva;

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeva;->a()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1a

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeva;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    new-instance v1, Lcom/google/android/gms/internal/ads/zzelg;

    .line 2
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzelg;-><init>(Lcom/google/android/gms/internal/ads/zzelh;)V

    .line 3
    :cond_1a
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzfuj;->h(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfut;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.android.gms.internal.ads.zzelg (com.google.android.gms.internal.ads.zzelg)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzelg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzepm;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/ads/zzelh;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzelh;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzelg;->a:Lcom/google/android/gms/internal/ads/zzelh;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzelg;->a:Lcom/google/android/gms/internal/ads/zzelh;

    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzelh;->a(Landroid/os/Bundle;)V

    return-void
.end method
