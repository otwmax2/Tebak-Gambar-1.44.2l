###### Class com.google.android.gms.common.api.internal.u0 (com.google.android.gms.common.api.internal.u0)
.class final Lcom/google/android/gms/common/api/internal/u0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@18.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic o:Lcom/google/android/gms/common/api/internal/LifecycleCallback;

.field final synthetic p:Ljava/lang/String;

.field final synthetic q:Lcom/google/android/gms/common/api/internal/zzd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/zzd;Lcom/google/android/gms/common/api/internal/LifecycleCallback;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/u0;->q:Lcom/google/android/gms/common/api/internal/zzd;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/u0;->o:Lcom/google/android/gms/common/api/internal/LifecycleCallback;

    iput-object p3, p0, Lcom/google/android/gms/common/api/internal/u0;->p:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/u0;->q:Lcom/google/android/gms/common/api/internal/zzd;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zzd;->o(Lcom/google/android/gms/common/api/internal/zzd;)I

    move-result v1

    if-lez v1, :cond_1f

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/u0;->o:Lcom/google/android/gms/common/api/internal/LifecycleCallback;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zzd;->p(Lcom/google/android/gms/common/api/internal/zzd;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_1b

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zzd;->p(Lcom/google/android/gms/common/api/internal/zzd;)Landroid/os/Bundle;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/u0;->p:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    .line 2
    :goto_1c
    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->f(Landroid/os/Bundle;)V

    :cond_1f
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/u0;->q:Lcom/google/android/gms/common/api/internal/zzd;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zzd;->o(Lcom/google/android/gms/common/api/internal/zzd;)I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_2d

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/u0;->o:Lcom/google/android/gms/common/api/internal/LifecycleCallback;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->j()V

    :cond_2d
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/u0;->q:Lcom/google/android/gms/common/api/internal/zzd;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zzd;->o(Lcom/google/android/gms/common/api/internal/zzd;)I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_3b

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/u0;->o:Lcom/google/android/gms/common/api/internal/LifecycleCallback;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->h()V

    :cond_3b
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/u0;->q:Lcom/google/android/gms/common/api/internal/zzd;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zzd;->o(Lcom/google/android/gms/common/api/internal/zzd;)I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_49

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/u0;->o:Lcom/google/android/gms/common/api/internal/LifecycleCallback;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->k()V

    :cond_49
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/u0;->q:Lcom/google/android/gms/common/api/internal/zzd;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zzd;->o(Lcom/google/android/gms/common/api/internal/zzd;)I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_57

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/u0;->o:Lcom/google/android/gms/common/api/internal/LifecycleCallback;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->g()V

    :cond_57
    return-void
.end method
