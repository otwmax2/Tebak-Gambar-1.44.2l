###### Class com.google.android.gms.internal.consent_sdk.zzaw (com.google.android.gms.internal.consent_sdk.zzaw)
.class final Lcom/google/android/gms/internal/consent_sdk/zzaw;
.super Ljava/lang/Object;
.source "com.google.android.ump:user-messaging-platform@@2.0.0"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field private final o:Landroid/app/Activity;

.field final synthetic p:Lcom/google/android/gms/internal/consent_sdk/zzay;


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzaw;->o:Landroid/app/Activity;

    if-eq p1, v0, :cond_5

    return-void

    :cond_5
    iget-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzaw;->p:Lcom/google/android/gms/internal/consent_sdk/zzay;

    new-instance v0, Lcom/google/android/gms/internal/consent_sdk/zzj;

    const/4 v1, 0x3

    const-string v2, "Activity is destroyed."

    .line 1
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/consent_sdk/zzj;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/consent_sdk/zzay;->c(Lcom/google/android/gms/internal/consent_sdk/zzj;)V

    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method
