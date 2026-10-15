###### Class com.google.android.gms.internal.ads.zzctl (com.google.android.gms.internal.ads.zzctl)
.class final Lcom/google/android/gms/internal/ads/zzctl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfuf;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/zzctm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzctm;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzctl;->a:Lcom/google/android/gms/internal/ads/zzctm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .registers 2

    return-void
.end method

.method public final bridge synthetic c(Ljava/lang/Object;)V
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzctl;->a:Lcom/google/android/gms/internal/ads/zzctm;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzctm;->a(Lcom/google/android/gms/internal/ads/zzctm;)Lcom/google/android/gms/internal/ads/zzcvg;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcvg;->zza()V

    return-void
.end method
