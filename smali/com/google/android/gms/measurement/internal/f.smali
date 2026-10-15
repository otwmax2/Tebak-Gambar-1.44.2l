###### Class com.google.android.gms.measurement.internal.f (com.google.android.gms.measurement.internal.f)
.class final Lcom/google/android/gms/measurement/internal/f;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@20.1.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic o:Lcom/google/android/gms/measurement/internal/a1;

.field final synthetic p:Lcom/google/android/gms/measurement/internal/g;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/g;Lcom/google/android/gms/measurement/internal/a1;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/f;->p:Lcom/google/android/gms/measurement/internal/g;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/f;->o:Lcom/google/android/gms/measurement/internal/a1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/f;->o:Lcom/google/android/gms/measurement/internal/a1;

    invoke-interface {v0}, Lcom/google/android/gms/measurement/internal/a1;->t()Lcom/google/android/gms/measurement/internal/zzaa;

    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzaa;->a()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/f;->o:Lcom/google/android/gms/measurement/internal/a1;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/measurement/internal/a1;->B()Lcom/google/android/gms/measurement/internal/zzgf;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/measurement/internal/zzgf;->v(Ljava/lang/Runnable;)V

    return-void

    :cond_15
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/f;->p:Lcom/google/android/gms/measurement/internal/g;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/g;->e()Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/f;->p:Lcom/google/android/gms/measurement/internal/g;

    const-wide/16 v2, 0x0

    .line 4
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/g;->a(Lcom/google/android/gms/measurement/internal/g;J)V

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/f;->p:Lcom/google/android/gms/measurement/internal/g;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/g;->c()V

    :cond_29
    return-void
.end method
