###### Class com.google.android.gms.internal.ads.zzekt (com.google.android.gms.internal.ads.zzekt)
.class public final Lcom/google/android/gms/internal/ads/zzekt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzepm;


# instance fields
.field final a:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field final b:I
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzekt;->a:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzekt;->b:I

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .registers 4

    .line 1
    check-cast p1, Landroid/os/Bundle;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzekt;->a:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_27

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzekt;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_10

    goto :goto_27

    :cond_10
    const-string v0, "pii"

    .line 3
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzezi;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 4
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzekt;->a:Ljava/lang/String;

    const-string v0, "pvid"

    .line 5
    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzekt;->b:I

    const-string v0, "pvid_s"

    .line 6
    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_27
    :goto_27
    return-void
.end method
