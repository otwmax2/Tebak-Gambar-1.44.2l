###### Class com.google.android.gms.measurement.internal.r3 (com.google.android.gms.measurement.internal.r3)
.class abstract Lcom/google/android/gms/measurement/internal/r3;
.super Lcom/google/android/gms/measurement/internal/q3;
.source "com.google.android.gms:play-services-measurement@@20.1.2"


# instance fields
.field private c:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzli;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/q3;-><init>(Lcom/google/android/gms/measurement/internal/zzli;)V

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/q3;->b:Lcom/google/android/gms/measurement/internal/zzli;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzli;->l()V

    return-void
.end method


# virtual methods
.method protected final d()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/r3;->f()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final e()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/r3;->c:Z

    if-nez v0, :cond_10

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/r3;->g()Z

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/q3;->b:Lcom/google/android/gms/measurement/internal/zzli;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzli;->g()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/r3;->c:Z

    return-void

    .line 4
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t initialize twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final f()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/r3;->c:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract g()Z
.end method
