###### Class com.google.android.gms.internal.consent_sdk.zzq (com.google.android.gms.internal.consent_sdk.zzq)
.class public final synthetic Lcom/google/android/gms/internal/consent_sdk/zzq;
.super Ljava/lang/Object;
.source "com.google.android.ump:user-messaging-platform@@2.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Lcom/google/android/gms/internal/consent_sdk/zzv;

.field public final synthetic p:Landroid/app/Activity;

.field public final synthetic q:Lz4/d;

.field public final synthetic r:Lz4/c;

.field public final synthetic s:Lz4/b;


# virtual methods
.method public final run()V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzq;->o:Lcom/google/android/gms/internal/consent_sdk/zzv;

    iget-object v1, p0, Lcom/google/android/gms/internal/consent_sdk/zzq;->p:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/gms/internal/consent_sdk/zzq;->q:Lz4/d;

    iget-object v3, p0, Lcom/google/android/gms/internal/consent_sdk/zzq;->r:Lz4/c;

    iget-object v4, p0, Lcom/google/android/gms/internal/consent_sdk/zzq;->s:Lz4/b;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/consent_sdk/zzv;->b(Landroid/app/Activity;Lz4/d;Lz4/c;Lz4/b;)V

    return-void
.end method
