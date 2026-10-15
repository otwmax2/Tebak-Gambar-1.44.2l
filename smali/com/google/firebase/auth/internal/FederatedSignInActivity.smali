###### Class com.google.firebase.auth.internal.FederatedSignInActivity (com.google.firebase.auth.internal.FederatedSignInActivity)
.class public Lcom/google/firebase/auth/internal/FederatedSignInActivity;
.super Landroidx/fragment/app/e;
.source "com.google.firebase:firebase-auth@@19.3.1"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepName;
.end annotation


# static fields
.field private static p:J

.field private static final q:Lj5/j;

.field private static r:Landroid/os/Handler;

.field private static s:Ljava/lang/Runnable;


# instance fields
.field private o:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    invoke-static {}, Lj5/j;->a()Lj5/j;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/auth/internal/FederatedSignInActivity;->q:Lj5/j;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/e;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/firebase/auth/internal/FederatedSignInActivity;->o:Z

    return-void
.end method

.method static synthetic C(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 1

    const/4 p0, 0x0

    .line 1
    sput-object p0, Lcom/google/firebase/auth/internal/FederatedSignInActivity;->s:Ljava/lang/Runnable;

    return-object p0
.end method

.method private final D()V
    .registers 4

    const-wide/16 v0, 0x0

    .line 1
    sput-wide v0, Lcom/google/firebase/auth/internal/FederatedSignInActivity;->p:J

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/firebase/auth/internal/FederatedSignInActivity;->o:Z

    .line 3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.google.firebase.auth.internal.EXTRA_CANCELED"

    const/4 v2, 0x1

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "com.google.firebase.auth.ACTION_RECEIVE_FIREBASE_AUTH_INTENT"

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    invoke-static {p0}, Lu0/a;->b(Landroid/content/Context;)Lu0/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lu0/a;->d(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_2b

    const-string v0, "WEB_CONTEXT_CANCELED"

    .line 7
    invoke-static {v0}, Lj5/d;->a(Ljava/lang/String;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    .line 8
    invoke-static {p0, v0}, Lj5/o;->c(Landroid/content/Context;Lcom/google/android/gms/common/api/Status;)V

    goto :goto_30

    .line 9
    :cond_2b
    sget-object v0, Lcom/google/firebase/auth/internal/FederatedSignInActivity;->q:Lj5/j;

    invoke-virtual {v0, p0}, Lj5/j;->b(Landroid/content/Context;)V

    .line 10
    :goto_30
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private final E(Lcom/google/android/gms/common/api/Status;)V
    .registers 4

    const-wide/16 v0, 0x0

    .line 1
    sput-wide v0, Lcom/google/firebase/auth/internal/FederatedSignInActivity;->p:J

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/firebase/auth/internal/FederatedSignInActivity;->o:Z

    .line 3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4
    invoke-static {v0, p1}, Lj5/v;->a(Landroid/content/Intent;Lcom/google/android/gms/common/api/Status;)V

    const-string v1, "com.google.firebase.auth.ACTION_RECEIVE_FIREBASE_AUTH_INTENT"

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    invoke-static {p0}, Lu0/a;->b(Landroid/content/Context;)Lu0/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lu0/a;->d(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 8
    invoke-static {v0, p1}, Lj5/o;->c(Landroid/content/Context;Lcom/google/android/gms/common/api/Status;)V

    goto :goto_2b

    .line 9
    :cond_26
    sget-object p1, Lcom/google/firebase/auth/internal/FederatedSignInActivity;->q:Lj5/j;

    invoke-virtual {p1, p0}, Lj5/j;->b(Landroid/content/Context;)V

    .line 10
    :goto_2b
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method static synthetic F(Lcom/google/firebase/auth/internal/FederatedSignInActivity;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/auth/internal/FederatedSignInActivity;->D()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 10

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/e;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.firebase.auth.internal.SIGN_IN"

    .line 3
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "IdpSignInActivity"

    if-nez v1, :cond_43

    const-string v1, "com.google.firebase.auth.internal.LINK"

    .line 4
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_43

    const-string v1, "com.google.firebase.auth.internal.REAUTHENTICATE"

    .line 5
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_43

    const-string p1, "Could not do operation - unknown action: "

    .line 6
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_36

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3c

    :cond_36
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    :goto_3c
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    invoke-direct {p0}, Lcom/google/firebase/auth/internal/FederatedSignInActivity;->D()V

    return-void

    .line 8
    :cond_43
    invoke-static {}, Lcom/google/android/gms/common/util/DefaultClock;->d()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->a()J

    move-result-wide v0

    .line 9
    sget-wide v3, Lcom/google/firebase/auth/internal/FederatedSignInActivity;->p:J

    sub-long v3, v0, v3

    const-wide/16 v5, 0x7530

    cmp-long v7, v3, v5

    if-gez v7, :cond_5b

    const-string p1, "Could not start operation - already in progress"

    .line 10
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 11
    :cond_5b
    sput-wide v0, Lcom/google/firebase/auth/internal/FederatedSignInActivity;->p:J

    if-eqz p1, :cond_67

    const-string v0, "com.google.firebase.auth.internal.KEY_STARTED_SIGN_IN"

    .line 12
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/firebase/auth/internal/FederatedSignInActivity;->o:Z

    :cond_67
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/e;->onNewIntent(Landroid/content/Intent;)V

    .line 2
    sget-object v0, Lcom/google/firebase/auth/internal/FederatedSignInActivity;->r:Landroid/os/Handler;

    if-eqz v0, :cond_11

    sget-object v1, Lcom/google/firebase/auth/internal/FederatedSignInActivity;->s:Ljava/lang/Runnable;

    if-eqz v1, :cond_11

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 4
    sput-object v0, Lcom/google/firebase/auth/internal/FederatedSignInActivity;->s:Ljava/lang/Runnable;

    .line 5
    :cond_11
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    return-void
.end method

.method protected onResume()V
    .registers 11

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/e;->onResume()V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.google.firebase.auth.internal.WEB_SIGN_IN_FAILED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "IdpSignInActivity"

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "com.google.firebase.auth.internal.OPERATION"

    if-eqz v1, :cond_31

    const-string v1, "Web sign-in failed, finishing"

    .line 4
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-static {v0}, Lj5/v;->b(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 6
    invoke-static {v0}, Lj5/v;->c(Landroid/content/Intent;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/auth/internal/FederatedSignInActivity;->E(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_2f

    .line 7
    :cond_2c
    invoke-direct {p0}, Lcom/google/firebase/auth/internal/FederatedSignInActivity;->D()V

    :goto_2f
    const/4 v3, 0x1

    goto :goto_9d

    .line 8
    :cond_31
    invoke-virtual {v0, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9d

    const-string v1, "com.google.firebase.auth.internal.VERIFY_ASSERTION_REQUEST"

    .line 9
    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9d

    .line 10
    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.google.firebase.auth.internal.SIGN_IN"

    .line 11
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5b

    const-string v7, "com.google.firebase.auth.internal.LINK"

    .line 12
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5b

    const-string v7, "com.google.firebase.auth.internal.REAUTHENTICATE"

    .line 13
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9d

    .line 14
    :cond_5b
    sget-object v7, Lcom/google/android/gms/internal/firebase_auth/zzfy;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 15
    invoke-static {v0, v1, v7}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelableSerializer;->b(Landroid/content/Intent;Ljava/lang/String;Landroid/os/Parcelable$Creator;)Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/firebase_auth/zzfy;

    const-string v8, "com.google.firebase.auth.internal.EXTRA_TENANT_ID"

    .line 16
    invoke-virtual {v0, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 17
    invoke-virtual {v7, v0}, Lcom/google/android/gms/internal/firebase_auth/zzfy;->W3(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_auth/zzfy;

    const-wide/16 v8, 0x0

    .line 18
    sput-wide v8, Lcom/google/firebase/auth/internal/FederatedSignInActivity;->p:J

    .line 19
    iput-boolean v3, p0, Lcom/google/firebase/auth/internal/FederatedSignInActivity;->o:Z

    .line 20
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 21
    invoke-static {v7, v3, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelableSerializer;->e(Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;Landroid/content/Intent;Ljava/lang/String;)V

    .line 22
    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.google.firebase.auth.ACTION_RECEIVE_FIREBASE_AUTH_INTENT"

    .line 23
    invoke-virtual {v3, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 24
    invoke-static {p0}, Lu0/a;->b(Landroid/content/Context;)Lu0/a;

    move-result-object v1

    invoke-virtual {v1, v3}, Lu0/a;->d(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_94

    .line 25
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 26
    invoke-static {v1, v7, v6, v0}, Lj5/j;->c(Landroid/content/Context;Lcom/google/android/gms/internal/firebase_auth/zzfy;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_99

    .line 27
    :cond_94
    sget-object v0, Lcom/google/firebase/auth/internal/FederatedSignInActivity;->q:Lj5/j;

    invoke-virtual {v0, p0}, Lj5/j;->b(Landroid/content/Context;)V

    .line 28
    :goto_99
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_2f

    :cond_9d
    :goto_9d
    if-eqz v3, :cond_a0

    return-void

    .line 29
    :cond_a0
    iget-boolean v0, p0, Lcom/google/firebase/auth/internal/FederatedSignInActivity;->o:Z

    if-nez v0, :cond_df

    .line 30
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.firebase.auth.api.gms.ui.START_WEB_SIGN_IN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.google.android.gms"

    .line 31
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 32
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 33
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0xa003

    .line 34
    :try_start_c9
    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_cc
    .catch Landroid/content/ActivityNotFoundException; {:try_start_c9 .. :try_end_cc} :catch_cd

    goto :goto_dc

    :catch_cd
    const-string v0, "Could not launch web sign-in Intent. Google Play service is unavailable"

    .line 35
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const/16 v2, 0x445b

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    .line 37
    invoke-direct {p0, v1}, Lcom/google/firebase/auth/internal/FederatedSignInActivity;->E(Lcom/google/android/gms/common/api/Status;)V

    .line 38
    :goto_dc
    iput-boolean v4, p0, Lcom/google/firebase/auth/internal/FederatedSignInActivity;->o:Z

    return-void

    .line 39
    :cond_df
    new-instance v0, Lcom/google/firebase/auth/internal/a;

    invoke-direct {v0, p0}, Lcom/google/firebase/auth/internal/a;-><init>(Lcom/google/firebase/auth/internal/FederatedSignInActivity;)V

    sput-object v0, Lcom/google/firebase/auth/internal/FederatedSignInActivity;->s:Ljava/lang/Runnable;

    .line 40
    sget-object v0, Lcom/google/firebase/auth/internal/FederatedSignInActivity;->r:Landroid/os/Handler;

    if-nez v0, :cond_f1

    .line 41
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase_auth/zzj;-><init>()V

    sput-object v0, Lcom/google/firebase/auth/internal/FederatedSignInActivity;->r:Landroid/os/Handler;

    .line 42
    :cond_f1
    sget-object v0, Lcom/google/firebase/auth/internal/FederatedSignInActivity;->r:Landroid/os/Handler;

    sget-object v1, Lcom/google/firebase/auth/internal/FederatedSignInActivity;->s:Ljava/lang/Runnable;

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    iget-boolean v0, p0, Lcom/google/firebase/auth/internal/FederatedSignInActivity;->o:Z

    const-string v1, "com.google.firebase.auth.internal.KEY_STARTED_SIGN_IN"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
