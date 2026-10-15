###### Class com.tebakgambar.splash.SplashActivity (com.tebakgambar.splash.SplashActivity)
.class public Lcom/tebakgambar/splash/SplashActivity;
.super Lj8/t;
.source "SplashActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lj8/t;-><init>()V

    return-void
.end method

.method static synthetic U0(Lcom/tebakgambar/splash/SplashActivity;Landroid/net/Uri;Lcom/tebakgambar/model/request/TGRemoteMessage;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/tebakgambar/splash/SplashActivity;->V0(Landroid/net/Uri;Lcom/tebakgambar/model/request/TGRemoteMessage;)V

    return-void
.end method

.method private V0(Landroid/net/Uri;Lcom/tebakgambar/model/request/TGRemoteMessage;)V
    .registers 3

    if-eqz p1, :cond_f

    .line 1
    invoke-static {p0, p1}, Ly8/f;->j(Landroid/content/Context;Landroid/net/Uri;)Lt1/h;

    move-result-object p1

    new-instance p2, Lcom/tebakgambar/splash/SplashActivity$c;

    invoke-direct {p2, p0}, Lcom/tebakgambar/splash/SplashActivity$c;-><init>(Lcom/tebakgambar/splash/SplashActivity;)V

    invoke-virtual {p1, p2}, Lt1/h;->x(Lt1/f;)Lt1/h;

    goto :goto_28

    :cond_f
    if-eqz p2, :cond_25

    .line 2
    invoke-static {p0}, Lcom/tebakgambar/Henson;->with(Landroid/content/Context;)Lcom/tebakgambar/Henson$b;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lcom/tebakgambar/Henson$b;->b()Lcom/tebakgambar/home/HomeActivity$$IntentBuilder;

    move-result-object p1

    .line 4
    invoke-virtual {p1, p2}, Lcom/tebakgambar/home/HomeActivity$$IntentBuilder;->remoteMessage(Lcom/tebakgambar/model/request/TGRemoteMessage;)Lcom/tebakgambar/home/HomeActivity$$IntentBuilder;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/tebakgambar/home/HomeActivity$$IntentBuilder;->build()Landroid/content/Intent;

    move-result-object p1

    .line 6
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_28

    .line 7
    :cond_25
    invoke-direct {p0}, Lcom/tebakgambar/splash/SplashActivity;->W0()V

    :goto_28
    return-void
.end method

.method private W0()V
    .registers 2

    .line 1
    invoke-static {}, Lm8/a;->f()Lm8/a;

    move-result-object v0

    invoke-virtual {v0}, Lm8/a;->q()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 2
    invoke-static {p0}, Lcom/tebakgambar/Henson;->with(Landroid/content/Context;)Lcom/tebakgambar/Henson$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tebakgambar/Henson$b;->b()Lcom/tebakgambar/home/HomeActivity$$IntentBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tebakgambar/home/HomeActivity$$IntentBuilder;->build()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_29

    .line 3
    :cond_1a
    invoke-static {p0}, Lcom/tebakgambar/Henson;->with(Landroid/content/Context;)Lcom/tebakgambar/Henson$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tebakgambar/Henson$b;->n()Lcom/tebakgambar/story/StoryActivity$$IntentBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tebakgambar/story/StoryActivity$$IntentBuilder;->build()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :goto_29
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/e;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p1}, Lcom/tebakgambar/model/request/TGRemoteMessage;->remoteMessageFromExtras(Landroid/os/Bundle;)Lcom/tebakgambar/model/request/TGRemoteMessage;

    move-result-object p1

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_33

    .line 4
    invoke-static {}, La6/a;->b()La6/a;

    move-result-object v1

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, La6/a;->a(Landroid/content/Intent;)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    new-instance v2, Lcom/tebakgambar/splash/SplashActivity$b;

    invoke-direct {v2, p0, v0, p1}, Lcom/tebakgambar/splash/SplashActivity$b;-><init>(Lcom/tebakgambar/splash/SplashActivity;Landroid/content/Intent;Lcom/tebakgambar/model/request/TGRemoteMessage;)V

    .line 6
    invoke-virtual {v1, p0, v2}, Lcom/google/android/gms/tasks/Task;->h(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    new-instance v2, Lcom/tebakgambar/splash/SplashActivity$a;

    invoke-direct {v2, p0, v0, p1}, Lcom/tebakgambar/splash/SplashActivity$a;-><init>(Lcom/tebakgambar/splash/SplashActivity;Landroid/content/Intent;Lcom/tebakgambar/model/request/TGRemoteMessage;)V

    .line 7
    invoke-virtual {v1, p0, v2}, Lcom/google/android/gms/tasks/Task;->e(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    goto :goto_36

    .line 8
    :cond_33
    invoke-direct {p0}, Lcom/tebakgambar/splash/SplashActivity;->W0()V

    :goto_36
    return-void
.end method

###### Class com.tebakgambar.splash.SplashActivity.a (com.tebakgambar.splash.SplashActivity$a)
.class Lcom/tebakgambar/splash/SplashActivity$a;
.super Ljava/lang/Object;
.source "SplashActivity.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tebakgambar/splash/SplashActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lcom/tebakgambar/model/request/TGRemoteMessage;

.field final synthetic c:Lcom/tebakgambar/splash/SplashActivity;


# direct methods
.method constructor <init>(Lcom/tebakgambar/splash/SplashActivity;Landroid/content/Intent;Lcom/tebakgambar/model/request/TGRemoteMessage;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/splash/SplashActivity$a;->c:Lcom/tebakgambar/splash/SplashActivity;

    iput-object p2, p0, Lcom/tebakgambar/splash/SplashActivity$a;->a:Landroid/content/Intent;

    iput-object p3, p0, Lcom/tebakgambar/splash/SplashActivity$a;->b:Lcom/tebakgambar/model/request/TGRemoteMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Exception;)V
    .registers 4

    .line 1
    iget-object p1, p0, Lcom/tebakgambar/splash/SplashActivity$a;->c:Lcom/tebakgambar/splash/SplashActivity;

    iget-object v0, p0, Lcom/tebakgambar/splash/SplashActivity$a;->a:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/tebakgambar/splash/SplashActivity$a;->b:Lcom/tebakgambar/model/request/TGRemoteMessage;

    invoke-static {p1, v0, v1}, Lcom/tebakgambar/splash/SplashActivity;->U0(Lcom/tebakgambar/splash/SplashActivity;Landroid/net/Uri;Lcom/tebakgambar/model/request/TGRemoteMessage;)V

    return-void
.end method

###### Class com.tebakgambar.splash.SplashActivity.b (com.tebakgambar.splash.SplashActivity$b)
.class Lcom/tebakgambar/splash/SplashActivity$b;
.super Ljava/lang/Object;
.source "SplashActivity.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tebakgambar/splash/SplashActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnSuccessListener<",
        "La6/b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lcom/tebakgambar/model/request/TGRemoteMessage;

.field final synthetic c:Lcom/tebakgambar/splash/SplashActivity;


# direct methods
.method constructor <init>(Lcom/tebakgambar/splash/SplashActivity;Landroid/content/Intent;Lcom/tebakgambar/model/request/TGRemoteMessage;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/splash/SplashActivity$b;->c:Lcom/tebakgambar/splash/SplashActivity;

    iput-object p2, p0, Lcom/tebakgambar/splash/SplashActivity$b;->a:Landroid/content/Intent;

    iput-object p3, p0, Lcom/tebakgambar/splash/SplashActivity$b;->b:Lcom/tebakgambar/model/request/TGRemoteMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(La6/b;)V
    .registers 4

    if-eqz p1, :cond_7

    .line 1
    invoke-virtual {p1}, La6/b;->a()Landroid/net/Uri;

    move-result-object p1

    goto :goto_d

    .line 2
    :cond_7
    iget-object p1, p0, Lcom/tebakgambar/splash/SplashActivity$b;->a:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 3
    :goto_d
    iget-object v0, p0, Lcom/tebakgambar/splash/SplashActivity$b;->c:Lcom/tebakgambar/splash/SplashActivity;

    iget-object v1, p0, Lcom/tebakgambar/splash/SplashActivity$b;->b:Lcom/tebakgambar/model/request/TGRemoteMessage;

    invoke-static {v0, p1, v1}, Lcom/tebakgambar/splash/SplashActivity;->U0(Lcom/tebakgambar/splash/SplashActivity;Landroid/net/Uri;Lcom/tebakgambar/model/request/TGRemoteMessage;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, La6/b;

    invoke-virtual {p0, p1}, Lcom/tebakgambar/splash/SplashActivity$b;->a(La6/b;)V

    return-void
.end method

###### Class com.tebakgambar.splash.SplashActivity.c (com.tebakgambar.splash.SplashActivity$c)
.class Lcom/tebakgambar/splash/SplashActivity$c;
.super Ljava/lang/Object;
.source "SplashActivity.java"

# interfaces
.implements Lt1/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tebakgambar/splash/SplashActivity;->V0(Landroid/net/Uri;Lcom/tebakgambar/model/request/TGRemoteMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lt1/f<",
        "Landroid/content/Intent;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/tebakgambar/splash/SplashActivity;


# direct methods
.method constructor <init>(Lcom/tebakgambar/splash/SplashActivity;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/splash/SplashActivity$c;->a:Lcom/tebakgambar/splash/SplashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lt1/h;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt1/h<",
            "Landroid/content/Intent;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/splash/SplashActivity$c;->a:Lcom/tebakgambar/splash/SplashActivity;

    invoke-virtual {p1}, Lt1/h;->s()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x0

    return-object p1
.end method
