###### Class s8.i (s8.i)
.class public Ls8/i;
.super Landroidx/lifecycle/a;
.source "FirebaseLoginViewModel.java"

# interfaces
.implements Lcom/facebook/FacebookCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/lifecycle/a;",
        "Lcom/facebook/FacebookCallback<",
        "Lcom/facebook/login/LoginResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final D:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field A:Lcom/facebook/CallbackManager;

.field private B:Lcom/google/firebase/auth/FirebaseAuth;

.field private C:Z

.field public s:Landroidx/databinding/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/m<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field t:Ly8/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly8/u<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field u:Ly8/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly8/u<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field v:Ly8/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly8/u<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field w:Ly8/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly8/u<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field x:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field y:Ls8/f$a;

.field private z:Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "email"

    const-string v1, "public_profile"

    .line 1
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Ls8/i;->D:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1}, Landroidx/lifecycle/a;-><init>(Landroid/app/Application;)V

    .line 2
    new-instance p1, Landroidx/databinding/m;

    invoke-direct {p1}, Landroidx/databinding/m;-><init>()V

    iput-object p1, p0, Ls8/i;->s:Landroidx/databinding/m;

    .line 3
    new-instance p1, Ly8/u;

    invoke-direct {p1}, Ly8/u;-><init>()V

    iput-object p1, p0, Ls8/i;->t:Ly8/u;

    .line 4
    new-instance p1, Ly8/u;

    invoke-direct {p1}, Ly8/u;-><init>()V

    iput-object p1, p0, Ls8/i;->u:Ly8/u;

    .line 5
    new-instance p1, Ly8/u;

    invoke-direct {p1}, Ly8/u;-><init>()V

    iput-object p1, p0, Ls8/i;->v:Ly8/u;

    .line 6
    new-instance p1, Ly8/u;

    invoke-direct {p1}, Ly8/u;-><init>()V

    iput-object p1, p0, Ls8/i;->w:Ly8/u;

    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Ls8/i;->C:Z

    .line 8
    iget-object p1, p0, Ls8/i;->s:Landroidx/databinding/m;

    invoke-virtual {p0}, Landroidx/lifecycle/a;->j()Landroid/app/Application;

    move-result-object v0

    const v1, 0x7f1200f1

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/databinding/m;->z(Ljava/lang/Object;)V

    .line 9
    invoke-static {}, Lcom/facebook/CallbackManager$Factory;->create()Lcom/facebook/CallbackManager;

    move-result-object p1

    iput-object p1, p0, Ls8/i;->A:Lcom/facebook/CallbackManager;

    .line 10
    invoke-static {}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object p1

    iput-object p1, p0, Ls8/i;->B:Lcom/google/firebase/auth/FirebaseAuth;

    .line 11
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object p1

    iget-object v0, p0, Ls8/i;->A:Lcom/facebook/CallbackManager;

    invoke-virtual {p1, v0, p0}, Lcom/facebook/login/LoginManager;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    return-void
.end method

.method private A()V
    .registers 4

    .line 1
    iget-object v0, p0, Ls8/i;->x:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    if-nez v0, :cond_b

    return-void

    .line 2
    :cond_b
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v1

    sget-object v2, Ls8/i;->D:Ljava/util/List;

    invoke-virtual {v1, v0, v2}, Lcom/facebook/login/LoginManager;->logInWithReadPermissions(Landroidx/fragment/app/Fragment;Ljava/util/Collection;)V

    return-void
.end method

.method private B()V
    .registers 4

    .line 1
    iget-object v0, p0, Ls8/i;->z:Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    if-nez v0, :cond_2c

    .line 2
    new-instance v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    sget-object v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->z:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    invoke-direct {v0, v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;-><init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V

    .line 3
    invoke-virtual {p0}, Landroidx/lifecycle/a;->j()Landroid/app/Application;

    move-result-object v1

    const v2, 0x7f1200c8

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->d(Ljava/lang/String;)Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->b()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->a()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object v0

    .line 6
    invoke-virtual {p0}, Landroidx/lifecycle/a;->j()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->a(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    move-result-object v0

    iput-object v0, p0, Ls8/i;->z:Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    .line 7
    :cond_2c
    iget-object v0, p0, Ls8/i;->t:Ly8/u;

    iget-object v1, p0, Ls8/i;->z:Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    invoke-virtual {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;->z()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Ly8/u;->n(Ljava/lang/Object;)V

    return-void
.end method

.method private C(Lg5/d;)V
    .registers 5

    .line 1
    iget-object v0, p0, Ls8/i;->x:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_34

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object v1

    if-nez v1, :cond_11

    goto :goto_34

    .line 3
    :cond_11
    iget-object v1, p0, Ls8/i;->w:Ly8/u;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ly8/u;->n(Ljava/lang/Object;)V

    .line 4
    iget-object v1, p0, Ls8/i;->B:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {v1}, Lcom/google/firebase/auth/FirebaseAuth;->b()Lg5/s;

    move-result-object v1

    if-eqz v1, :cond_31

    .line 5
    invoke-virtual {v1, p1}, Lg5/s;->d4(Lg5/d;)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object v0

    new-instance v2, Ls8/g;

    invoke-direct {v2, p0, p1}, Ls8/g;-><init>(Ls8/i;Lg5/d;)V

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/tasks/Task;->b(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    goto :goto_34

    .line 6
    :cond_31
    invoke-direct {p0, p1}, Ls8/i;->D(Lg5/d;)V

    :cond_34
    :goto_34
    return-void
.end method

.method private D(Lg5/d;)V
    .registers 5

    .line 1
    iget-object v0, p0, Ls8/i;->x:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_2a

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object v1

    if-nez v1, :cond_11

    goto :goto_2a

    .line 3
    :cond_11
    iget-object v1, p0, Ls8/i;->w:Ly8/u;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ly8/u;->n(Ljava/lang/Object;)V

    .line 4
    iget-object v1, p0, Ls8/i;->B:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {v1, p1}, Lcom/google/firebase/auth/FirebaseAuth;->d(Lg5/d;)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    .line 5
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object v0

    new-instance v2, Ls8/h;

    invoke-direct {v2, p0, p1}, Ls8/h;-><init>(Ls8/i;Lg5/d;)V

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/tasks/Task;->b(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    :cond_2a
    :goto_2a
    return-void
.end method

.method public static synthetic k(Ls8/i;Lg5/d;Lcom/google/android/gms/tasks/Task;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ls8/i;->p(Lg5/d;Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method

.method public static synthetic l(Ls8/i;Lg5/d;Lcom/google/android/gms/tasks/Task;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ls8/i;->q(Lg5/d;Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method

.method private m(Lcom/facebook/AccessToken;)V
    .registers 2

    .line 1
    invoke-virtual {p1}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lg5/g;->a(Ljava/lang/String;)Lg5/d;

    move-result-object p1

    .line 2
    invoke-direct {p0, p1}, Ls8/i;->C(Lg5/d;)V

    return-void
.end method

.method private n(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V
    .registers 3

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->a4()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lg5/x;->a(Ljava/lang/String;Ljava/lang/String;)Lg5/d;

    move-result-object p1

    .line 2
    invoke-direct {p0, p1}, Ls8/i;->C(Lg5/d;)V

    return-void
.end method

.method private o(Lg5/s;)V
    .registers 5

    .line 1
    iget-boolean v0, p0, Ls8/i;->C:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Ls8/i;->C:Z

    .line 3
    invoke-static {}, Lm8/a;->f()Lm8/a;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lm8/a;->v(J)V

    .line 4
    iget-object v0, p0, Ls8/i;->v:Ly8/u;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ly8/u;->n(Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Ls8/i;->y:Ls8/f$a;

    if-eqz v0, :cond_21

    .line 6
    invoke-interface {v0, p1}, Ls8/f$a;->a(Lg5/s;)V

    :cond_21
    return-void
.end method

.method private synthetic p(Lg5/d;Lcom/google/android/gms/tasks/Task;)V
    .registers 5

    .line 1
    iget-object v0, p0, Ls8/i;->w:Ly8/u;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ly8/u;->n(Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->t()Z

    move-result p2

    if-eqz p2, :cond_17

    .line 3
    iget-object p1, p0, Ls8/i;->B:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseAuth;->b()Lg5/s;

    move-result-object p1

    .line 4
    invoke-direct {p0, p1}, Ls8/i;->o(Lg5/s;)V

    goto :goto_1a

    .line 5
    :cond_17
    invoke-direct {p0, p1}, Ls8/i;->D(Lg5/d;)V

    :goto_1a
    return-void
.end method

.method private synthetic q(Lg5/d;Lcom/google/android/gms/tasks/Task;)V
    .registers 5

    .line 1
    iget-object v0, p0, Ls8/i;->w:Ly8/u;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ly8/u;->n(Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->t()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 3
    iget-object p1, p0, Ls8/i;->B:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseAuth;->b()Lg5/s;

    move-result-object p1

    .line 4
    invoke-direct {p0, p1}, Ls8/i;->o(Lg5/s;)V

    goto/16 :goto_8a

    .line 5
    :cond_18
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->o()Ljava/lang/Exception;

    move-result-object v0

    instance-of v0, v0, Lg5/j;

    if-eqz v0, :cond_64

    .line 6
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->o()Ljava/lang/Exception;

    move-result-object p2

    check-cast p2, Lg5/j;

    .line 7
    invoke-virtual {p2}, Lg5/j;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ERROR_ACCOUNT_EXISTS_WITH_DIFFERENT_CREDENTIAL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 8
    invoke-virtual {p1}, Lg5/d;->V3()Ljava/lang/String;

    move-result-object p2

    const-string v0, "facebook.com"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_46

    .line 9
    iget-object p1, p0, Ls8/i;->s:Landroidx/databinding/m;

    const-string p2, "Akun kamu sudah terhubung dengan Google, tekan Google untuk lanjut!"

    invoke-virtual {p1, p2}, Landroidx/databinding/m;->z(Ljava/lang/Object;)V

    goto :goto_8a

    .line 10
    :cond_46
    invoke-virtual {p1}, Lg5/d;->V3()Ljava/lang/String;

    move-result-object p1

    const-string p2, "google.com"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8a

    .line 11
    iget-object p1, p0, Ls8/i;->s:Landroidx/databinding/m;

    const-string p2, "Akun kamu sudah terhubung dengan Facebook, tekan Facebook untuk lanjut!"

    invoke-virtual {p1, p2}, Landroidx/databinding/m;->z(Ljava/lang/Object;)V

    goto :goto_8a

    .line 12
    :cond_5a
    iget-object p1, p0, Ls8/i;->u:Ly8/u;

    invoke-virtual {p2}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ly8/u;->n(Ljava/lang/Object;)V

    goto :goto_8a

    .line 13
    :cond_64
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->o()Ljava/lang/Exception;

    move-result-object p1

    if-eqz p1, :cond_83

    .line 14
    invoke-static {}, Lcom/google/firebase/crashlytics/a;->a()Lcom/google/firebase/crashlytics/a;

    move-result-object p1

    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->o()Ljava/lang/Exception;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/firebase/crashlytics/a;->d(Ljava/lang/Throwable;)V

    .line 15
    iget-object p1, p0, Ls8/i;->u:Ly8/u;

    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->o()Ljava/lang/Exception;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ly8/u;->n(Ljava/lang/Object;)V

    goto :goto_8a

    .line 16
    :cond_83
    iget-object p1, p0, Ls8/i;->u:Ly8/u;

    const-string p2, "Firebase Authentication Failed"

    invoke-virtual {p1, p2}, Ly8/u;->n(Ljava/lang/Object;)V

    :cond_8a
    :goto_8a
    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 1

    return-void
.end method

.method public onError(Lcom/facebook/FacebookException;)V
    .registers 3

    .line 1
    iget-object v0, p0, Ls8/i;->u:Ly8/u;

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ly8/u;->n(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Lcom/facebook/login/LoginResult;

    invoke-virtual {p0, p1}, Ls8/i;->z(Lcom/facebook/login/LoginResult;)V

    return-void
.end method

.method public r()V
    .registers 5

    .line 1
    iget-object v0, p0, Ls8/i;->y:Ls8/f$a;

    .line 2
    invoke-interface {v0}, Ls8/f$a;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "viewLoginPopUp"

    const-string v2, "login popup"

    const-string v3, "view on login pop up"

    .line 3
    invoke-static {v1, v2, v3, v0}, Lm8/e;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public s()V
    .registers 5

    .line 1
    iget-object v0, p0, Ls8/i;->y:Ls8/f$a;

    .line 2
    invoke-interface {v0}, Ls8/f$a;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "clickLoginPopUp"

    const-string v2, "login popup"

    const-string v3, "click on close button"

    .line 3
    invoke-static {v1, v2, v3, v0}, Lm8/e;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Ls8/i;->B:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->b()Lg5/s;

    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Ls8/i;->o(Lg5/s;)V

    return-void
.end method

.method public t()V
    .registers 2

    .line 1
    iget-object v0, p0, Ls8/i;->B:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->b()Lg5/s;

    move-result-object v0

    .line 2
    invoke-direct {p0, v0}, Ls8/i;->o(Lg5/s;)V

    return-void
.end method

.method public u()V
    .registers 5

    .line 1
    iget-object v0, p0, Ls8/i;->y:Ls8/f$a;

    .line 2
    invoke-interface {v0}, Ls8/f$a;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "clickLoginPopUp"

    const-string v2, "login popup"

    const-string v3, "click on login with facebook"

    .line 3
    invoke-static {v1, v2, v3, v0}, Lm8/e;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ls8/i;->A()V

    return-void
.end method

.method public v()V
    .registers 5

    .line 1
    iget-object v0, p0, Ls8/i;->y:Ls8/f$a;

    .line 2
    invoke-interface {v0}, Ls8/f$a;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "clickLoginPopUp"

    const-string v2, "login popup"

    const-string v3, "click on login with google"

    .line 3
    invoke-static {v1, v2, v3, v0}, Lm8/e;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ls8/i;->B()V

    return-void
.end method

.method public w(Lcom/google/android/gms/tasks/Task;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    const-class v0, Lcom/google/android/gms/common/api/ApiException;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->q(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-direct {p0, p1}, Ls8/i;->n(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V
    :try_end_e
    .catch Lcom/google/android/gms/common/api/ApiException; {:try_start_0 .. :try_end_e} :catch_f

    goto :goto_20

    :catch_f
    move-exception p1

    .line 4
    invoke-static {}, Lcom/google/firebase/crashlytics/a;->a()Lcom/google/firebase/crashlytics/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/a;->d(Ljava/lang/Throwable;)V

    .line 5
    iget-object v0, p0, Ls8/i;->u:Ly8/u;

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ly8/u;->n(Ljava/lang/Object;)V

    :goto_20
    return-void
.end method

.method public x()V
    .registers 5

    .line 1
    iget-object v0, p0, Ls8/i;->y:Ls8/f$a;

    .line 2
    invoke-interface {v0}, Ls8/f$a;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "clickLoginPopUp"

    const-string v2, "login popup"

    const-string v3, "click on privacy policy"

    .line 3
    invoke-static {v1, v2, v3, v0}, Lm8/e;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public z(Lcom/facebook/login/LoginResult;)V
    .registers 2

    .line 1
    invoke-virtual {p1}, Lcom/facebook/login/LoginResult;->getAccessToken()Lcom/facebook/AccessToken;

    move-result-object p1

    invoke-direct {p0, p1}, Ls8/i;->m(Lcom/facebook/AccessToken;)V

    return-void
.end method

###### Class s8.g (s8.g)
.class public final synthetic Ls8/g;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field public final synthetic a:Ls8/i;

.field public final synthetic b:Lg5/d;


# direct methods
.method public synthetic constructor <init>(Ls8/i;Lg5/d;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls8/g;->a:Ls8/i;

    iput-object p2, p0, Ls8/g;->b:Lg5/d;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/tasks/Task;)V
    .registers 4

    iget-object v0, p0, Ls8/g;->a:Ls8/i;

    iget-object v1, p0, Ls8/g;->b:Lg5/d;

    invoke-static {v0, v1, p1}, Ls8/i;->k(Ls8/i;Lg5/d;Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method

###### Class s8.h (s8.h)
.class public final synthetic Ls8/h;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field public final synthetic a:Ls8/i;

.field public final synthetic b:Lg5/d;


# direct methods
.method public synthetic constructor <init>(Ls8/i;Lg5/d;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls8/h;->a:Ls8/i;

    iput-object p2, p0, Ls8/h;->b:Lg5/d;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/tasks/Task;)V
    .registers 4

    iget-object v0, p0, Ls8/h;->a:Ls8/i;

    iget-object v1, p0, Ls8/h;->b:Lg5/d;

    invoke-static {v0, v1, p1}, Ls8/i;->l(Ls8/i;Lg5/d;Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method
