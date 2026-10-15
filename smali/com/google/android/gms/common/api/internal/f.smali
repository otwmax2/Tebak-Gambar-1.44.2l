###### Class com.google.android.gms.common.api.internal.f (com.google.android.gms.common.api.internal.f)
.class final Lcom/google/android/gms/common/api/internal/f;
.super Lcom/google/android/gms/common/api/internal/r;
.source "com.google.android.gms:play-services-base@@18.0.1"


# instance fields
.field final synthetic b:Lcom/google/android/gms/common/api/internal/zaaj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/zaaj;Lcom/google/android/gms/common/api/internal/zabf;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/f;->b:Lcom/google/android/gms/common/api/internal/zaaj;

    invoke-direct {p0, p2}, Lcom/google/android/gms/common/api/internal/r;-><init>(Lcom/google/android/gms/common/api/internal/zabf;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/f;->b:Lcom/google/android/gms/common/api/internal/zaaj;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zaaj;->i(Lcom/google/android/gms/common/api/internal/zaaj;)Lcom/google/android/gms/common/api/internal/zabi;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zabi;->C:Lcom/google/android/gms/common/api/internal/zabz;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/internal/zabz;->a(Landroid/os/Bundle;)V

    return-void
.end method
