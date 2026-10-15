###### Class com.google.android.gms.measurement.internal.y3 (com.google.android.gms.measurement.internal.y3)
.class final Lcom/google/android/gms/measurement/internal/y3;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@20.1.2"

# interfaces
.implements Lcom/google/android/gms/measurement/internal/c4;


# instance fields
.field final synthetic a:Lcom/google/android/gms/measurement/internal/zzli;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzli;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/y3;->a:Lcom/google/android/gms/measurement/internal/zzli;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const-string v0, "_err"

    if-eqz p2, :cond_22

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/y3;->a:Lcom/google/android/gms/measurement/internal/zzli;

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzli;->Z(Lcom/google/android/gms/measurement/internal/zzli;)Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object p2

    if-eqz p2, :cond_21

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzli;->Z(Lcom/google/android/gms/measurement/internal/zzli;)Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzey;->m()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object p1

    const-string p2, "AppId not known when logging event"

    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/measurement/internal/zzew;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_21
    return-void

    :cond_22
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/y3;->a:Lcom/google/android/gms/measurement/internal/zzli;

    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzli;->B()Lcom/google/android/gms/measurement/internal/zzgf;

    move-result-object p2

    new-instance v1, Lcom/google/android/gms/measurement/internal/x3;

    invoke-direct {v1, p0, p1, v0, p3}, Lcom/google/android/gms/measurement/internal/x3;-><init>(Lcom/google/android/gms/measurement/internal/y3;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 4
    invoke-virtual {p2, v1}, Lcom/google/android/gms/measurement/internal/zzgf;->v(Ljava/lang/Runnable;)V

    return-void
.end method
