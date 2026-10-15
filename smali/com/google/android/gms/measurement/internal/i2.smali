###### Class com.google.android.gms.measurement.internal.i2 (com.google.android.gms.measurement.internal.i2)
.class final Lcom/google/android/gms/measurement/internal/i2;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@20.1.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic o:Lcom/google/android/gms/measurement/internal/zzp;

.field final synthetic p:Z

.field final synthetic q:Lcom/google/android/gms/measurement/internal/zzll;

.field final synthetic r:Lcom/google/android/gms/measurement/internal/zzkb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzkb;Lcom/google/android/gms/measurement/internal/zzp;ZLcom/google/android/gms/measurement/internal/zzll;)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/i2;->r:Lcom/google/android/gms/measurement/internal/zzkb;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/i2;->o:Lcom/google/android/gms/measurement/internal/zzp;

    iput-boolean p3, p0, Lcom/google/android/gms/measurement/internal/i2;->p:Z

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/i2;->q:Lcom/google/android/gms/measurement/internal/zzll;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/i2;->r:Lcom/google/android/gms/measurement/internal/zzkb;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzkb;->F(Lcom/google/android/gms/measurement/internal/zzkb;)Lcom/google/android/gms/measurement/internal/zzeo;

    move-result-object v1

    if-nez v1, :cond_18

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzey;->m()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v0

    const-string v1, "Discarding data. Failed to set user property"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzew;->a(Ljava/lang/String;)V

    return-void

    :cond_18
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/i2;->o:Lcom/google/android/gms/measurement/internal/zzp;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/i2;->r:Lcom/google/android/gms/measurement/internal/zzkb;

    iget-boolean v2, p0, Lcom/google/android/gms/measurement/internal/i2;->p:Z

    if-eqz v2, :cond_25

    const/4 v2, 0x0

    goto :goto_27

    .line 4
    :cond_25
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/i2;->q:Lcom/google/android/gms/measurement/internal/zzll;

    .line 5
    :goto_27
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/i2;->o:Lcom/google/android/gms/measurement/internal/zzp;

    .line 6
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzkb;->m(Lcom/google/android/gms/measurement/internal/zzeo;Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;Lcom/google/android/gms/measurement/internal/zzp;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/i2;->r:Lcom/google/android/gms/measurement/internal/zzkb;

    .line 7
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzkb;->L(Lcom/google/android/gms/measurement/internal/zzkb;)V

    return-void
.end method
