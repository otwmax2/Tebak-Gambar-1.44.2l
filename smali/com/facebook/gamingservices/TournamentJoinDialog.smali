###### Class com.facebook.gamingservices.TournamentJoinDialog (com.facebook.gamingservices.TournamentJoinDialog)
.class public final Lcom/facebook/gamingservices/TournamentJoinDialog;
.super Lcom/facebook/internal/FacebookDialogBase;
.source "TournamentJoinDialog.kt"


# annotations
.annotation build Lcom/facebook/internal/instrument/crashshield/AutoHandleExceptions;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/gamingservices/TournamentJoinDialog$Companion;,
        Lcom/facebook/gamingservices/TournamentJoinDialog$Result;,
        Lcom/facebook/gamingservices/TournamentJoinDialog$FacebookAppHandler;,
        Lcom/facebook/gamingservices/TournamentJoinDialog$ChromeCustomTabHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/internal/FacebookDialogBase<",
        "Ljava/lang/String;",
        "Lcom/facebook/gamingservices/TournamentJoinDialog$Result;",
        ">;"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/facebook/gamingservices/TournamentJoinDialog$Companion;

.field private static final DEFAULT_REQUEST_CODE:I

.field private static final JOIN_TOURNAMENT_ACCESS_TOKEN_KEY:Ljava/lang/String; = "access_token"

.field private static final JOIN_TOURNAMENT_ACTION:Ljava/lang/String; = "com.facebook.games.gaming_services.DEEPLINK"

.field private static final JOIN_TOURNAMENT_CONTENT_TYPE:Ljava/lang/String; = "text/plain"

.field private static final JOIN_TOURNAMENT_DIALOG:Ljava/lang/String; = "join_tournament"

.field private static final JOIN_TOURNAMENT_ERROR_MESSAGE_KEY:Ljava/lang/String; = "error_message"


# instance fields
.field private payload:Ljava/lang/String;

.field private requestID:Ljava/lang/Number;

.field private tournamentID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/facebook/gamingservices/TournamentJoinDialog$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/gamingservices/TournamentJoinDialog$Companion;-><init>(Lt9/g;)V

    sput-object v0, Lcom/facebook/gamingservices/TournamentJoinDialog;->Companion:Lcom/facebook/gamingservices/TournamentJoinDialog$Companion;

    .line 1
    sget-object v0, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->TournamentJoinDialog:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    invoke-virtual {v0}, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->toRequestCode()I

    move-result v0

    sput v0, Lcom/facebook/gamingservices/TournamentJoinDialog;->DEFAULT_REQUEST_CODE:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .registers 3

    const-string v0, "activity"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget v0, Lcom/facebook/gamingservices/TournamentJoinDialog;->DEFAULT_REQUEST_CODE:I

    invoke-direct {p0, p1, v0}, Lcom/facebook/internal/FacebookDialogBase;-><init>(Landroid/app/Activity;I)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Fragment;)V
    .registers 3

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Lcom/facebook/internal/FragmentWrapper;

    invoke-direct {v0, p1}, Lcom/facebook/internal/FragmentWrapper;-><init>(Landroid/app/Fragment;)V

    invoke-direct {p0, v0}, Lcom/facebook/gamingservices/TournamentJoinDialog;-><init>(Lcom/facebook/internal/FragmentWrapper;)V

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/Fragment;)V
    .registers 3

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/facebook/internal/FragmentWrapper;

    invoke-direct {v0, p1}, Lcom/facebook/internal/FragmentWrapper;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-direct {p0, v0}, Lcom/facebook/gamingservices/TournamentJoinDialog;-><init>(Lcom/facebook/internal/FragmentWrapper;)V

    return-void
.end method

.method private constructor <init>(Lcom/facebook/internal/FragmentWrapper;)V
    .registers 3

    .line 4
    sget v0, Lcom/facebook/gamingservices/TournamentJoinDialog;->DEFAULT_REQUEST_CODE:I

    invoke-direct {p0, p1, v0}, Lcom/facebook/internal/FacebookDialogBase;-><init>(Lcom/facebook/internal/FragmentWrapper;I)V

    return-void
.end method

.method public static synthetic a(Lcom/facebook/gamingservices/TournamentJoinDialog;Lcom/facebook/share/internal/ResultProcessor;ILandroid/content/Intent;)Z
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/facebook/gamingservices/TournamentJoinDialog;->registerCallbackImpl$lambda-0(Lcom/facebook/gamingservices/TournamentJoinDialog;Lcom/facebook/share/internal/ResultProcessor;ILandroid/content/Intent;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$getPayload$p(Lcom/facebook/gamingservices/TournamentJoinDialog;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/facebook/gamingservices/TournamentJoinDialog;->payload:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getTournamentID$p(Lcom/facebook/gamingservices/TournamentJoinDialog;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/facebook/gamingservices/TournamentJoinDialog;->tournamentID:Ljava/lang/String;

    return-object p0
.end method

.method private static final registerCallbackImpl$lambda-0(Lcom/facebook/gamingservices/TournamentJoinDialog;Lcom/facebook/share/internal/ResultProcessor;ILandroid/content/Intent;)Z
    .registers 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$resultProcessor"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/facebook/share/internal/ShareInternalUtility;->INSTANCE:Lcom/facebook/share/internal/ShareInternalUtility;

    invoke-virtual {p0}, Lcom/facebook/internal/FacebookDialogBase;->getRequestCode()I

    move-result p0

    invoke-static {p0, p2, p3, p1}, Lcom/facebook/share/internal/ShareInternalUtility;->handleActivityResult(IILandroid/content/Intent;Lcom/facebook/share/internal/ResultProcessor;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public bridge synthetic canShow(Ljava/lang/Object;)Z
    .registers 2

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/facebook/gamingservices/TournamentJoinDialog;->canShow(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public canShow(Ljava/lang/String;)Z
    .registers 4

    .line 2
    invoke-static {}, Lcom/facebook/gamingservices/cloudgaming/CloudGameLoginHandler;->isRunningInCloud()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_9

    const/4 v1, 0x0

    goto :goto_1e

    .line 3
    :cond_9
    new-instance v0, Lcom/facebook/gamingservices/TournamentJoinDialog$FacebookAppHandler;

    invoke-direct {v0, p0}, Lcom/facebook/gamingservices/TournamentJoinDialog$FacebookAppHandler;-><init>(Lcom/facebook/gamingservices/TournamentJoinDialog;)V

    invoke-virtual {v0, p1, v1}, Lcom/facebook/gamingservices/TournamentJoinDialog$FacebookAppHandler;->canShow(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_1e

    .line 4
    :cond_15
    new-instance v0, Lcom/facebook/gamingservices/TournamentJoinDialog$ChromeCustomTabHandler;

    invoke-direct {v0, p0}, Lcom/facebook/gamingservices/TournamentJoinDialog$ChromeCustomTabHandler;-><init>(Lcom/facebook/gamingservices/TournamentJoinDialog;)V

    invoke-virtual {v0, p1, v1}, Lcom/facebook/gamingservices/TournamentJoinDialog$ChromeCustomTabHandler;->canShow(Ljava/lang/String;Z)Z

    move-result v1

    :goto_1e
    return v1
.end method

.method protected createBaseAppCall()Lcom/facebook/internal/AppCall;
    .registers 5

    .line 1
    new-instance v0, Lcom/facebook/internal/AppCall;

    invoke-virtual {p0}, Lcom/facebook/internal/FacebookDialogBase;->getRequestCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3, v2}, Lcom/facebook/internal/AppCall;-><init>(ILjava/util/UUID;ILt9/g;)V

    return-object v0
.end method

.method protected getOrderedModeHandlers()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/internal/FacebookDialogBase<",
            "Ljava/lang/String;",
            "Lcom/facebook/gamingservices/TournamentJoinDialog$Result;",
            ">.ModeHandler;>;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/facebook/internal/FacebookDialogBase$ModeHandler;

    .line 1
    new-instance v1, Lcom/facebook/gamingservices/TournamentJoinDialog$FacebookAppHandler;

    invoke-direct {v1, p0}, Lcom/facebook/gamingservices/TournamentJoinDialog$FacebookAppHandler;-><init>(Lcom/facebook/gamingservices/TournamentJoinDialog;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/facebook/gamingservices/TournamentJoinDialog$ChromeCustomTabHandler;

    invoke-direct {v1, p0}, Lcom/facebook/gamingservices/TournamentJoinDialog$ChromeCustomTabHandler;-><init>(Lcom/facebook/gamingservices/TournamentJoinDialog;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Li9/j;->g([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected registerCallbackImpl(Lcom/facebook/internal/CallbackManagerImpl;Lcom/facebook/FacebookCallback;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/internal/CallbackManagerImpl;",
            "Lcom/facebook/FacebookCallback<",
            "Lcom/facebook/gamingservices/TournamentJoinDialog$Result;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callbackManager"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/facebook/gamingservices/TournamentJoinDialog$registerCallbackImpl$resultProcessor$1;

    invoke-direct {v0, p2}, Lcom/facebook/gamingservices/TournamentJoinDialog$registerCallbackImpl$resultProcessor$1;-><init>(Lcom/facebook/FacebookCallback;)V

    .line 2
    invoke-virtual {p0}, Lcom/facebook/internal/FacebookDialogBase;->getRequestCode()I

    move-result p2

    new-instance v1, Lcom/facebook/gamingservices/h;

    invoke-direct {v1, p0, v0}, Lcom/facebook/gamingservices/h;-><init>(Lcom/facebook/gamingservices/TournamentJoinDialog;Lcom/facebook/share/internal/ResultProcessor;)V

    invoke-virtual {p1, p2, v1}, Lcom/facebook/internal/CallbackManagerImpl;->registerCallback(ILcom/facebook/internal/CallbackManagerImpl$Callback;)V

    return-void
.end method

.method public final show(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/facebook/gamingservices/TournamentJoinDialog;->tournamentID:Ljava/lang/String;

    .line 2
    iput-object p2, p0, Lcom/facebook/gamingservices/TournamentJoinDialog;->payload:Ljava/lang/String;

    .line 3
    sget-object p2, Lcom/facebook/internal/FacebookDialogBase;->BASE_AUTOMATIC_MODE:Ljava/lang/Object;

    invoke-super {p0, p1, p2}, Lcom/facebook/internal/FacebookDialogBase;->showImpl(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic showImpl(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/gamingservices/TournamentJoinDialog;->showImpl(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method protected showImpl(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    const-string v0, "mode"

    invoke-static {p2, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/facebook/gamingservices/cloudgaming/CloudGameLoginHandler;->isRunningInCloud()Z

    move-result v0

    if-eqz v0, :cond_c

    return-void

    .line 3
    :cond_c
    invoke-super {p0, p1, p2}, Lcom/facebook/internal/FacebookDialogBase;->showImpl(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

###### Class com.facebook.gamingservices.TournamentJoinDialog.ChromeCustomTabHandler (com.facebook.gamingservices.TournamentJoinDialog$ChromeCustomTabHandler)
.class final Lcom/facebook/gamingservices/TournamentJoinDialog$ChromeCustomTabHandler;
.super Lcom/facebook/internal/FacebookDialogBase$ModeHandler;
.source "TournamentJoinDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/gamingservices/TournamentJoinDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ChromeCustomTabHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/internal/FacebookDialogBase<",
        "Ljava/lang/String;",
        "Lcom/facebook/gamingservices/TournamentJoinDialog$Result;",
        ">.ModeHandler;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/gamingservices/TournamentJoinDialog;


# direct methods
.method public constructor <init>(Lcom/facebook/gamingservices/TournamentJoinDialog;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/facebook/gamingservices/TournamentJoinDialog$ChromeCustomTabHandler;->this$0:Lcom/facebook/gamingservices/TournamentJoinDialog;

    invoke-direct {p0, p1}, Lcom/facebook/internal/FacebookDialogBase$ModeHandler;-><init>(Lcom/facebook/internal/FacebookDialogBase;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic canShow(Ljava/lang/Object;Z)Z
    .registers 3

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/gamingservices/TournamentJoinDialog$ChromeCustomTabHandler;->canShow(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public canShow(Ljava/lang/String;Z)Z
    .registers 3

    .line 2
    sget-object p1, Lcom/facebook/internal/CustomTabUtils;->INSTANCE:Lcom/facebook/internal/CustomTabUtils;

    invoke-static {}, Lcom/facebook/internal/CustomTabUtils;->getChromePackage()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method

.method public bridge synthetic createAppCall(Ljava/lang/Object;)Lcom/facebook/internal/AppCall;
    .registers 2

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/facebook/gamingservices/TournamentJoinDialog$ChromeCustomTabHandler;->createAppCall(Ljava/lang/String;)Lcom/facebook/internal/AppCall;

    move-result-object p1

    return-object p1
.end method

.method public createAppCall(Ljava/lang/String;)Lcom/facebook/internal/AppCall;
    .registers 8

    .line 2
    iget-object p1, p0, Lcom/facebook/gamingservices/TournamentJoinDialog$ChromeCustomTabHandler;->this$0:Lcom/facebook/gamingservices/TournamentJoinDialog;

    invoke-virtual {p1}, Lcom/facebook/gamingservices/TournamentJoinDialog;->createBaseAppCall()Lcom/facebook/internal/AppCall;

    move-result-object p1

    .line 3
    sget-object v0, Lcom/facebook/AccessToken;->Companion:Lcom/facebook/AccessToken$Companion;

    invoke-virtual {v0}, Lcom/facebook/AccessToken$Companion;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    .line 4
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 5
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const/4 v3, 0x0

    if-nez v0, :cond_1b

    move-object v4, v3

    goto :goto_1f

    .line 6
    :cond_1b
    invoke-virtual {v0}, Lcom/facebook/AccessToken;->getApplicationId()Ljava/lang/String;

    move-result-object v4

    :goto_1f
    if-nez v4, :cond_27

    sget-object v4, Lcom/facebook/FacebookSdk;->INSTANCE:Lcom/facebook/FacebookSdk;

    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v4

    :cond_27
    const-string v5, "app_id"

    .line 7
    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "payload"

    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_38

    goto :goto_3b

    .line 9
    :cond_38
    invoke-virtual {v0}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    :goto_3b
    if-nez v0, :cond_3e

    goto :goto_42

    .line 10
    :cond_3e
    invoke-virtual {v0}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v3

    :goto_42
    const-string v0, "access_token"

    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    sget-object v0, Lcom/facebook/internal/CustomTabUtils;->INSTANCE:Lcom/facebook/internal/CustomTabUtils;

    invoke-static {}, Lcom/facebook/internal/CustomTabUtils;->getDefaultRedirectURI()Ljava/lang/String;

    move-result-object v0

    const-string v2, "redirect_uri"

    .line 12
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    sget-object v0, Lcom/facebook/internal/DialogPresenter;->INSTANCE:Lcom/facebook/internal/DialogPresenter;

    const-string v0, "join_tournament"

    invoke-static {p1, v0, v1}, Lcom/facebook/internal/DialogPresenter;->setupAppCallForCustomTabDialog(Lcom/facebook/internal/AppCall;Ljava/lang/String;Landroid/os/Bundle;)V

    return-object p1
.end method

###### Class com.facebook.gamingservices.TournamentJoinDialog.Companion (com.facebook.gamingservices.TournamentJoinDialog$Companion)
.class public final Lcom/facebook/gamingservices/TournamentJoinDialog$Companion;
.super Ljava/lang/Object;
.source "TournamentJoinDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/gamingservices/TournamentJoinDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lt9/g;)V
    .registers 2

    invoke-direct {p0}, Lcom/facebook/gamingservices/TournamentJoinDialog$Companion;-><init>()V

    return-void
.end method

###### Class com.facebook.gamingservices.TournamentJoinDialog.FacebookAppHandler (com.facebook.gamingservices.TournamentJoinDialog$FacebookAppHandler)
.class final Lcom/facebook/gamingservices/TournamentJoinDialog$FacebookAppHandler;
.super Lcom/facebook/internal/FacebookDialogBase$ModeHandler;
.source "TournamentJoinDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/gamingservices/TournamentJoinDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FacebookAppHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/internal/FacebookDialogBase<",
        "Ljava/lang/String;",
        "Lcom/facebook/gamingservices/TournamentJoinDialog$Result;",
        ">.ModeHandler;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/gamingservices/TournamentJoinDialog;


# direct methods
.method public constructor <init>(Lcom/facebook/gamingservices/TournamentJoinDialog;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/facebook/gamingservices/TournamentJoinDialog$FacebookAppHandler;->this$0:Lcom/facebook/gamingservices/TournamentJoinDialog;

    invoke-direct {p0, p1}, Lcom/facebook/internal/FacebookDialogBase$ModeHandler;-><init>(Lcom/facebook/internal/FacebookDialogBase;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic canShow(Ljava/lang/Object;Z)Z
    .registers 3

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/gamingservices/TournamentJoinDialog$FacebookAppHandler;->canShow(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public canShow(Ljava/lang/String;Z)Z
    .registers 4

    .line 2
    sget-object p1, Lcom/facebook/FacebookSdk;->INSTANCE:Lcom/facebook/FacebookSdk;

    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string p2, "FacebookSdk.getApplicationContext().packageManager"

    invoke-static {p1, p2}, Lt9/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance p2, Landroid/content/Intent;

    const-string v0, "com.facebook.games.gaming_services.DEEPLINK"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "text/plain"

    .line 4
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    invoke-virtual {p2, p1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_23

    const/4 p1, 0x1

    goto :goto_24

    :cond_23
    const/4 p1, 0x0

    :goto_24
    return p1
.end method

.method public bridge synthetic createAppCall(Ljava/lang/Object;)Lcom/facebook/internal/AppCall;
    .registers 2

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/facebook/gamingservices/TournamentJoinDialog$FacebookAppHandler;->createAppCall(Ljava/lang/String;)Lcom/facebook/internal/AppCall;

    move-result-object p1

    return-object p1
.end method

.method public createAppCall(Ljava/lang/String;)Lcom/facebook/internal/AppCall;
    .registers 7

    .line 2
    sget-object p1, Lcom/facebook/AccessToken;->Companion:Lcom/facebook/AccessToken$Companion;

    invoke-virtual {p1}, Lcom/facebook/AccessToken$Companion;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/facebook/gamingservices/TournamentJoinDialog$FacebookAppHandler;->this$0:Lcom/facebook/gamingservices/TournamentJoinDialog;

    invoke-virtual {v0}, Lcom/facebook/gamingservices/TournamentJoinDialog;->createBaseAppCall()Lcom/facebook/internal/AppCall;

    move-result-object v0

    .line 4
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.facebook.games.gaming_services.DEEPLINK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "text/plain"

    .line 5
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p1, :cond_67

    .line 6
    invoke-virtual {p1}, Lcom/facebook/AccessToken;->isExpired()Z

    move-result v2

    if-nez v2, :cond_67

    .line 7
    invoke-virtual {p1}, Lcom/facebook/AccessToken;->getGraphDomain()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3b

    .line 8
    invoke-virtual {p1}, Lcom/facebook/AccessToken;->getGraphDomain()Ljava/lang/String;

    move-result-object v2

    const-string v3, "gaming"

    invoke-static {v3, v2}, Lt9/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    goto :goto_3b

    .line 9
    :cond_33
    new-instance p1, Lcom/facebook/FacebookException;

    const-string v0, "Attempted to present TournamentJoinDialog while user is not gaming logged in"

    invoke-direct {p1, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_3b
    :goto_3b
    invoke-virtual {p1}, Lcom/facebook/AccessToken;->getApplicationId()Ljava/lang/String;

    move-result-object p1

    .line 11
    sget-object v2, Lcom/facebook/gamingservices/internal/TournamentJoinDialogURIBuilder;->INSTANCE:Lcom/facebook/gamingservices/internal/TournamentJoinDialogURIBuilder;

    iget-object v3, p0, Lcom/facebook/gamingservices/TournamentJoinDialog$FacebookAppHandler;->this$0:Lcom/facebook/gamingservices/TournamentJoinDialog;

    invoke-static {v3}, Lcom/facebook/gamingservices/TournamentJoinDialog;->access$getTournamentID$p(Lcom/facebook/gamingservices/TournamentJoinDialog;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/gamingservices/TournamentJoinDialog$FacebookAppHandler;->this$0:Lcom/facebook/gamingservices/TournamentJoinDialog;

    invoke-static {v4}, Lcom/facebook/gamingservices/TournamentJoinDialog;->access$getPayload$p(Lcom/facebook/gamingservices/TournamentJoinDialog;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, p1, v3, v4}, Lcom/facebook/gamingservices/internal/TournamentJoinDialogURIBuilder;->bundle$facebook_gamingservices_release(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 12
    sget-object v2, Lcom/facebook/internal/NativeProtocol;->INSTANCE:Lcom/facebook/internal/NativeProtocol;

    .line 13
    invoke-virtual {v0}, Lcom/facebook/internal/AppCall;->getCallId()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    const v3, 0x13464da

    const-string v4, ""

    .line 14
    invoke-static {v1, v2, v4, v3, p1}, Lcom/facebook/internal/NativeProtocol;->setupProtocolRequestIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 15
    invoke-virtual {v0, v1}, Lcom/facebook/internal/AppCall;->setRequestIntent(Landroid/content/Intent;)V

    return-object v0

    .line 16
    :cond_67
    new-instance p1, Lcom/facebook/FacebookException;

    const-string v0, "Attempted to present TournamentJoinDialog with an invalid access token"

    invoke-direct {p1, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

###### Class com.facebook.gamingservices.TournamentJoinDialog.Result (com.facebook.gamingservices.TournamentJoinDialog$Result)
.class public final Lcom/facebook/gamingservices/TournamentJoinDialog$Result;
.super Ljava/lang/Object;
.source "TournamentJoinDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/gamingservices/TournamentJoinDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Result"
.end annotation


# instance fields
.field private payload:Ljava/lang/String;

.field private requestID:Ljava/lang/String;

.field private tournamentID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .registers 4

    const-string v0, "results"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "request"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_16

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/gamingservices/TournamentJoinDialog$Result;->requestID:Ljava/lang/String;

    :cond_16
    const-string v0, "tournament_id"

    .line 4
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/gamingservices/TournamentJoinDialog$Result;->tournamentID:Ljava/lang/String;

    const-string v0, "payload"

    .line 5
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/gamingservices/TournamentJoinDialog$Result;->payload:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getPayload()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/facebook/gamingservices/TournamentJoinDialog$Result;->payload:Ljava/lang/String;

    return-object v0
.end method

.method public final getRequestID()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/facebook/gamingservices/TournamentJoinDialog$Result;->requestID:Ljava/lang/String;

    return-object v0
.end method

.method public final getTournamentID()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/facebook/gamingservices/TournamentJoinDialog$Result;->tournamentID:Ljava/lang/String;

    return-object v0
.end method

.method public final setPayload(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/facebook/gamingservices/TournamentJoinDialog$Result;->payload:Ljava/lang/String;

    return-void
.end method

.method public final setRequestID(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/facebook/gamingservices/TournamentJoinDialog$Result;->requestID:Ljava/lang/String;

    return-void
.end method

.method public final setTournamentID(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/facebook/gamingservices/TournamentJoinDialog$Result;->tournamentID:Ljava/lang/String;

    return-void
.end method

###### Class com.facebook.gamingservices.TournamentJoinDialog$registerCallbackImpl$resultProcessor$1 (com.facebook.gamingservices.TournamentJoinDialog$registerCallbackImpl$resultProcessor$1)
.class public final Lcom/facebook/gamingservices/TournamentJoinDialog$registerCallbackImpl$resultProcessor$1;
.super Lcom/facebook/share/internal/ResultProcessor;
.source "TournamentJoinDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/gamingservices/TournamentJoinDialog;->registerCallbackImpl(Lcom/facebook/internal/CallbackManagerImpl;Lcom/facebook/FacebookCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $callback:Lcom/facebook/FacebookCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/FacebookCallback<",
            "Lcom/facebook/gamingservices/TournamentJoinDialog$Result;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/facebook/FacebookCallback;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/FacebookCallback<",
            "Lcom/facebook/gamingservices/TournamentJoinDialog$Result;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/gamingservices/TournamentJoinDialog$registerCallbackImpl$resultProcessor$1;->$callback:Lcom/facebook/FacebookCallback;

    .line 1
    invoke-direct {p0, p1}, Lcom/facebook/share/internal/ResultProcessor;-><init>(Lcom/facebook/FacebookCallback;)V

    return-void
.end method


# virtual methods
.method public onSuccess(Lcom/facebook/internal/AppCall;Landroid/os/Bundle;)V
    .registers 5

    const-string v0, "appCall"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_31

    const-string v0, "error_message"

    .line 1
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1e

    .line 2
    iget-object p1, p0, Lcom/facebook/gamingservices/TournamentJoinDialog$registerCallbackImpl$resultProcessor$1;->$callback:Lcom/facebook/FacebookCallback;

    new-instance v1, Lcom/facebook/FacebookException;

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v1}, Lcom/facebook/FacebookCallback;->onError(Lcom/facebook/FacebookException;)V

    return-void

    :cond_1e
    const-string v0, "payload"

    .line 3
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 4
    iget-object p1, p0, Lcom/facebook/gamingservices/TournamentJoinDialog$registerCallbackImpl$resultProcessor$1;->$callback:Lcom/facebook/FacebookCallback;

    new-instance v0, Lcom/facebook/gamingservices/TournamentJoinDialog$Result;

    invoke-direct {v0, p2}, Lcom/facebook/gamingservices/TournamentJoinDialog$Result;-><init>(Landroid/os/Bundle;)V

    invoke-interface {p1, v0}, Lcom/facebook/FacebookCallback;->onSuccess(Ljava/lang/Object;)V

    return-void

    .line 5
    :cond_31
    invoke-virtual {p0, p1}, Lcom/facebook/share/internal/ResultProcessor;->onCancel(Lcom/facebook/internal/AppCall;)V

    return-void
.end method

###### Class com.facebook.gamingservices.h (com.facebook.gamingservices.h)
.class public final synthetic Lcom/facebook/gamingservices/h;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/facebook/internal/CallbackManagerImpl$Callback;


# instance fields
.field public final synthetic a:Lcom/facebook/gamingservices/TournamentJoinDialog;

.field public final synthetic b:Lcom/facebook/share/internal/ResultProcessor;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/gamingservices/TournamentJoinDialog;Lcom/facebook/share/internal/ResultProcessor;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/gamingservices/h;->a:Lcom/facebook/gamingservices/TournamentJoinDialog;

    iput-object p2, p0, Lcom/facebook/gamingservices/h;->b:Lcom/facebook/share/internal/ResultProcessor;

    return-void
.end method


# virtual methods
.method public final onActivityResult(ILandroid/content/Intent;)Z
    .registers 5

    iget-object v0, p0, Lcom/facebook/gamingservices/h;->a:Lcom/facebook/gamingservices/TournamentJoinDialog;

    iget-object v1, p0, Lcom/facebook/gamingservices/h;->b:Lcom/facebook/share/internal/ResultProcessor;

    invoke-static {v0, v1, p1, p2}, Lcom/facebook/gamingservices/TournamentJoinDialog;->a(Lcom/facebook/gamingservices/TournamentJoinDialog;Lcom/facebook/share/internal/ResultProcessor;ILandroid/content/Intent;)Z

    move-result p1

    return p1
.end method
