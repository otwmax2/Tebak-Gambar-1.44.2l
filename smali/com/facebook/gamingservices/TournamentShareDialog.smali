###### Class com.facebook.gamingservices.TournamentShareDialog (com.facebook.gamingservices.TournamentShareDialog)
.class public final Lcom/facebook/gamingservices/TournamentShareDialog;
.super Lcom/facebook/internal/FacebookDialogBase;
.source "TournamentShareDialog.kt"


# annotations
.annotation build Lcom/facebook/internal/instrument/crashshield/AutoHandleExceptions;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/gamingservices/TournamentShareDialog$Companion;,
        Lcom/facebook/gamingservices/TournamentShareDialog$Result;,
        Lcom/facebook/gamingservices/TournamentShareDialog$FacebookAppHandler;,
        Lcom/facebook/gamingservices/TournamentShareDialog$AppSwitchHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/internal/FacebookDialogBase<",
        "Lcom/facebook/gamingservices/TournamentConfig;",
        "Lcom/facebook/gamingservices/TournamentShareDialog$Result;",
        ">;"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/facebook/gamingservices/TournamentShareDialog$Companion;

.field private static final defaultRequestCode:I


# instance fields
.field private score:Ljava/lang/Number;

.field private tournament:Lcom/facebook/gamingservices/Tournament;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/facebook/gamingservices/TournamentShareDialog$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/gamingservices/TournamentShareDialog$Companion;-><init>(Lt9/g;)V

    sput-object v0, Lcom/facebook/gamingservices/TournamentShareDialog;->Companion:Lcom/facebook/gamingservices/TournamentShareDialog$Companion;

    .line 1
    sget-object v0, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->TournamentShareDialog:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    invoke-virtual {v0}, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->toRequestCode()I

    move-result v0

    sput v0, Lcom/facebook/gamingservices/TournamentShareDialog;->defaultRequestCode:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .registers 3

    const-string v0, "activity"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget v0, Lcom/facebook/gamingservices/TournamentShareDialog;->defaultRequestCode:I

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

    invoke-direct {p0, v0}, Lcom/facebook/gamingservices/TournamentShareDialog;-><init>(Lcom/facebook/internal/FragmentWrapper;)V

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/Fragment;)V
    .registers 3

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/facebook/internal/FragmentWrapper;

    invoke-direct {v0, p1}, Lcom/facebook/internal/FragmentWrapper;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-direct {p0, v0}, Lcom/facebook/gamingservices/TournamentShareDialog;-><init>(Lcom/facebook/internal/FragmentWrapper;)V

    return-void
.end method

.method private constructor <init>(Lcom/facebook/internal/FragmentWrapper;)V
    .registers 3

    .line 4
    sget v0, Lcom/facebook/gamingservices/TournamentShareDialog;->defaultRequestCode:I

    invoke-direct {p0, p1, v0}, Lcom/facebook/internal/FacebookDialogBase;-><init>(Lcom/facebook/internal/FragmentWrapper;I)V

    return-void
.end method

.method public static synthetic a(Lcom/facebook/gamingservices/TournamentShareDialog;Lcom/facebook/share/internal/ResultProcessor;ILandroid/content/Intent;)Z
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/facebook/gamingservices/TournamentShareDialog;->registerCallbackImpl$lambda-0(Lcom/facebook/gamingservices/TournamentShareDialog;Lcom/facebook/share/internal/ResultProcessor;ILandroid/content/Intent;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$startActivityForResult(Lcom/facebook/gamingservices/TournamentShareDialog;Landroid/content/Intent;I)V
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/facebook/internal/FacebookDialogBase;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private static final registerCallbackImpl$lambda-0(Lcom/facebook/gamingservices/TournamentShareDialog;Lcom/facebook/share/internal/ResultProcessor;ILandroid/content/Intent;)Z
    .registers 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/facebook/share/internal/ShareInternalUtility;->INSTANCE:Lcom/facebook/share/internal/ShareInternalUtility;

    invoke-virtual {p0}, Lcom/facebook/internal/FacebookDialogBase;->getRequestCode()I

    move-result p0

    invoke-static {p0, p2, p3, p1}, Lcom/facebook/share/internal/ShareInternalUtility;->handleActivityResult(IILandroid/content/Intent;Lcom/facebook/share/internal/ResultProcessor;)Z

    move-result p0

    return p0
.end method


# virtual methods
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
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/internal/FacebookDialogBase<",
            "Lcom/facebook/gamingservices/TournamentConfig;",
            "Lcom/facebook/gamingservices/TournamentShareDialog$Result;",
            ">.ModeHandler;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Lcom/facebook/gamingservices/TournamentShareDialog$FacebookAppHandler;

    invoke-direct {v1, p0}, Lcom/facebook/gamingservices/TournamentShareDialog$FacebookAppHandler;-><init>(Lcom/facebook/gamingservices/TournamentShareDialog;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    new-instance v1, Lcom/facebook/gamingservices/TournamentShareDialog$AppSwitchHandler;

    invoke-direct {v1, p0}, Lcom/facebook/gamingservices/TournamentShareDialog$AppSwitchHandler;-><init>(Lcom/facebook/gamingservices/TournamentShareDialog;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final getScore()Ljava/lang/Number;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/facebook/gamingservices/TournamentShareDialog;->score:Ljava/lang/Number;

    return-object v0
.end method

.method public final getTournament()Lcom/facebook/gamingservices/Tournament;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/facebook/gamingservices/TournamentShareDialog;->tournament:Lcom/facebook/gamingservices/Tournament;

    return-object v0
.end method

.method protected registerCallbackImpl(Lcom/facebook/internal/CallbackManagerImpl;Lcom/facebook/FacebookCallback;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/internal/CallbackManagerImpl;",
            "Lcom/facebook/FacebookCallback<",
            "Lcom/facebook/gamingservices/TournamentShareDialog$Result;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callbackManager"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/facebook/gamingservices/TournamentShareDialog$registerCallbackImpl$resultProcessor$1;

    invoke-direct {v0, p2}, Lcom/facebook/gamingservices/TournamentShareDialog$registerCallbackImpl$resultProcessor$1;-><init>(Lcom/facebook/FacebookCallback;)V

    .line 2
    invoke-virtual {p0}, Lcom/facebook/internal/FacebookDialogBase;->getRequestCode()I

    move-result p2

    new-instance v1, Lcom/facebook/gamingservices/i;

    invoke-direct {v1, p0, v0}, Lcom/facebook/gamingservices/i;-><init>(Lcom/facebook/gamingservices/TournamentShareDialog;Lcom/facebook/share/internal/ResultProcessor;)V

    invoke-virtual {p1, p2, v1}, Lcom/facebook/internal/CallbackManagerImpl;->registerCallback(ILcom/facebook/internal/CallbackManagerImpl$Callback;)V

    return-void
.end method

.method public final setScore(Ljava/lang/Number;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/facebook/gamingservices/TournamentShareDialog;->score:Ljava/lang/Number;

    return-void
.end method

.method public final setTournament(Lcom/facebook/gamingservices/Tournament;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/facebook/gamingservices/TournamentShareDialog;->tournament:Lcom/facebook/gamingservices/Tournament;

    return-void
.end method

.method public final show(Ljava/lang/Number;Lcom/facebook/gamingservices/Tournament;)V
    .registers 4

    const-string v0, "score"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tournament"

    invoke-static {p2, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Lcom/facebook/gamingservices/TournamentShareDialog;->score:Ljava/lang/Number;

    .line 4
    iput-object p2, p0, Lcom/facebook/gamingservices/TournamentShareDialog;->tournament:Lcom/facebook/gamingservices/Tournament;

    .line 5
    sget-object p1, Lcom/facebook/internal/FacebookDialogBase;->BASE_AUTOMATIC_MODE:Ljava/lang/Object;

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1}, Lcom/facebook/gamingservices/TournamentShareDialog;->showImpl(Lcom/facebook/gamingservices/TournamentConfig;Ljava/lang/Object;)V

    return-void
.end method

.method public final show(Ljava/lang/Number;Lcom/facebook/gamingservices/TournamentConfig;)V
    .registers 4

    const-string v0, "score"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newTournamentConfig"

    invoke-static {p2, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/facebook/gamingservices/TournamentShareDialog;->score:Ljava/lang/Number;

    .line 2
    sget-object p1, Lcom/facebook/internal/FacebookDialogBase;->BASE_AUTOMATIC_MODE:Ljava/lang/Object;

    invoke-virtual {p0, p2, p1}, Lcom/facebook/gamingservices/TournamentShareDialog;->showImpl(Lcom/facebook/gamingservices/TournamentConfig;Ljava/lang/Object;)V

    return-void
.end method

.method protected showImpl(Lcom/facebook/gamingservices/TournamentConfig;Ljava/lang/Object;)V
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

.method public bridge synthetic showImpl(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 1
    check-cast p1, Lcom/facebook/gamingservices/TournamentConfig;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/gamingservices/TournamentShareDialog;->showImpl(Lcom/facebook/gamingservices/TournamentConfig;Ljava/lang/Object;)V

    return-void
.end method

###### Class com.facebook.gamingservices.TournamentShareDialog.AppSwitchHandler (com.facebook.gamingservices.TournamentShareDialog$AppSwitchHandler)
.class final Lcom/facebook/gamingservices/TournamentShareDialog$AppSwitchHandler;
.super Lcom/facebook/internal/FacebookDialogBase$ModeHandler;
.source "TournamentShareDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/gamingservices/TournamentShareDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AppSwitchHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/internal/FacebookDialogBase<",
        "Lcom/facebook/gamingservices/TournamentConfig;",
        "Lcom/facebook/gamingservices/TournamentShareDialog$Result;",
        ">.ModeHandler;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/gamingservices/TournamentShareDialog;


# direct methods
.method public constructor <init>(Lcom/facebook/gamingservices/TournamentShareDialog;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/facebook/gamingservices/TournamentShareDialog$AppSwitchHandler;->this$0:Lcom/facebook/gamingservices/TournamentShareDialog;

    invoke-direct {p0, p1}, Lcom/facebook/internal/FacebookDialogBase$ModeHandler;-><init>(Lcom/facebook/internal/FacebookDialogBase;)V

    return-void
.end method


# virtual methods
.method public canShow(Lcom/facebook/gamingservices/TournamentConfig;Z)Z
    .registers 3

    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic canShow(Ljava/lang/Object;Z)Z
    .registers 3

    .line 1
    check-cast p1, Lcom/facebook/gamingservices/TournamentConfig;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/gamingservices/TournamentShareDialog$AppSwitchHandler;->canShow(Lcom/facebook/gamingservices/TournamentConfig;Z)Z

    move-result p1

    return p1
.end method

.method public createAppCall(Lcom/facebook/gamingservices/TournamentConfig;)Lcom/facebook/internal/AppCall;
    .registers 6

    .line 2
    iget-object v0, p0, Lcom/facebook/gamingservices/TournamentShareDialog$AppSwitchHandler;->this$0:Lcom/facebook/gamingservices/TournamentShareDialog;

    invoke-virtual {v0}, Lcom/facebook/gamingservices/TournamentShareDialog;->createBaseAppCall()Lcom/facebook/internal/AppCall;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/facebook/AccessToken;->Companion:Lcom/facebook/AccessToken$Companion;

    invoke-virtual {v1}, Lcom/facebook/AccessToken$Companion;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v1

    if-eqz v1, :cond_73

    .line 4
    invoke-virtual {v1}, Lcom/facebook/AccessToken;->isExpired()Z

    move-result v2

    if-nez v2, :cond_73

    .line 5
    invoke-virtual {v1}, Lcom/facebook/AccessToken;->getGraphDomain()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2f

    .line 6
    invoke-virtual {v1}, Lcom/facebook/AccessToken;->getGraphDomain()Ljava/lang/String;

    move-result-object v2

    const-string v3, "gaming"

    invoke-static {v3, v2}, Lt9/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    goto :goto_2f

    .line 7
    :cond_27
    new-instance p1, Lcom/facebook/FacebookException;

    const-string v0, "Attempted to share tournament without without gaming login"

    invoke-direct {p1, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_2f
    :goto_2f
    iget-object v2, p0, Lcom/facebook/gamingservices/TournamentShareDialog$AppSwitchHandler;->this$0:Lcom/facebook/gamingservices/TournamentShareDialog;

    invoke-virtual {v2}, Lcom/facebook/gamingservices/TournamentShareDialog;->getScore()Ljava/lang/Number;

    move-result-object v2

    if-eqz v2, :cond_6b

    if-eqz p1, :cond_44

    .line 9
    sget-object v3, Lcom/facebook/gamingservices/internal/TournamentShareDialogURIBuilder;->INSTANCE:Lcom/facebook/gamingservices/internal/TournamentShareDialogURIBuilder;

    .line 10
    invoke-virtual {v1}, Lcom/facebook/AccessToken;->getApplicationId()Ljava/lang/String;

    move-result-object v1

    .line 11
    invoke-virtual {v3, p1, v2, v1}, Lcom/facebook/gamingservices/internal/TournamentShareDialogURIBuilder;->uriForCreating$facebook_gamingservices_release(Lcom/facebook/gamingservices/TournamentConfig;Ljava/lang/Number;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_5a

    .line 12
    :cond_44
    iget-object p1, p0, Lcom/facebook/gamingservices/TournamentShareDialog$AppSwitchHandler;->this$0:Lcom/facebook/gamingservices/TournamentShareDialog;

    invoke-virtual {p1}, Lcom/facebook/gamingservices/TournamentShareDialog;->getTournament()Lcom/facebook/gamingservices/Tournament;

    move-result-object p1

    if-nez p1, :cond_4e

    const/4 p1, 0x0

    goto :goto_5a

    .line 13
    :cond_4e
    sget-object v3, Lcom/facebook/gamingservices/internal/TournamentShareDialogURIBuilder;->INSTANCE:Lcom/facebook/gamingservices/internal/TournamentShareDialogURIBuilder;

    .line 14
    iget-object p1, p1, Lcom/facebook/gamingservices/Tournament;->identifier:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/facebook/AccessToken;->getApplicationId()Ljava/lang/String;

    move-result-object v1

    .line 15
    invoke-virtual {v3, p1, v2, v1}, Lcom/facebook/gamingservices/internal/TournamentShareDialogURIBuilder;->uriForUpdating$facebook_gamingservices_release(Ljava/lang/String;Ljava/lang/Number;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 16
    :goto_5a
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 17
    iget-object p1, p0, Lcom/facebook/gamingservices/TournamentShareDialog$AppSwitchHandler;->this$0:Lcom/facebook/gamingservices/TournamentShareDialog;

    invoke-virtual {p1}, Lcom/facebook/internal/FacebookDialogBase;->getRequestCode()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/facebook/gamingservices/TournamentShareDialog;->access$startActivityForResult(Lcom/facebook/gamingservices/TournamentShareDialog;Landroid/content/Intent;I)V

    return-object v0

    .line 18
    :cond_6b
    new-instance p1, Lcom/facebook/FacebookException;

    const-string v0, "Attempted to share tournament without a score"

    invoke-direct {p1, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 19
    :cond_73
    new-instance p1, Lcom/facebook/FacebookException;

    const-string v0, "Attempted to share tournament with an invalid access token"

    invoke-direct {p1, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic createAppCall(Ljava/lang/Object;)Lcom/facebook/internal/AppCall;
    .registers 2

    .line 1
    check-cast p1, Lcom/facebook/gamingservices/TournamentConfig;

    invoke-virtual {p0, p1}, Lcom/facebook/gamingservices/TournamentShareDialog$AppSwitchHandler;->createAppCall(Lcom/facebook/gamingservices/TournamentConfig;)Lcom/facebook/internal/AppCall;

    move-result-object p1

    return-object p1
.end method

###### Class com.facebook.gamingservices.TournamentShareDialog.Companion (com.facebook.gamingservices.TournamentShareDialog$Companion)
.class public final Lcom/facebook/gamingservices/TournamentShareDialog$Companion;
.super Ljava/lang/Object;
.source "TournamentShareDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/gamingservices/TournamentShareDialog;
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

    invoke-direct {p0}, Lcom/facebook/gamingservices/TournamentShareDialog$Companion;-><init>()V

    return-void
.end method

###### Class com.facebook.gamingservices.TournamentShareDialog.FacebookAppHandler (com.facebook.gamingservices.TournamentShareDialog$FacebookAppHandler)
.class final Lcom/facebook/gamingservices/TournamentShareDialog$FacebookAppHandler;
.super Lcom/facebook/internal/FacebookDialogBase$ModeHandler;
.source "TournamentShareDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/gamingservices/TournamentShareDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FacebookAppHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/internal/FacebookDialogBase<",
        "Lcom/facebook/gamingservices/TournamentConfig;",
        "Lcom/facebook/gamingservices/TournamentShareDialog$Result;",
        ">.ModeHandler;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/gamingservices/TournamentShareDialog;


# direct methods
.method public constructor <init>(Lcom/facebook/gamingservices/TournamentShareDialog;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/facebook/gamingservices/TournamentShareDialog$FacebookAppHandler;->this$0:Lcom/facebook/gamingservices/TournamentShareDialog;

    invoke-direct {p0, p1}, Lcom/facebook/internal/FacebookDialogBase$ModeHandler;-><init>(Lcom/facebook/internal/FacebookDialogBase;)V

    return-void
.end method


# virtual methods
.method public canShow(Lcom/facebook/gamingservices/TournamentConfig;Z)Z
    .registers 4

    .line 2
    sget-object p1, Lcom/facebook/FacebookSdk;->INSTANCE:Lcom/facebook/FacebookSdk;

    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string p2, "getApplicationContext().packageManager"

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

.method public bridge synthetic canShow(Ljava/lang/Object;Z)Z
    .registers 3

    .line 1
    check-cast p1, Lcom/facebook/gamingservices/TournamentConfig;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/gamingservices/TournamentShareDialog$FacebookAppHandler;->canShow(Lcom/facebook/gamingservices/TournamentConfig;Z)Z

    move-result p1

    return p1
.end method

.method public createAppCall(Lcom/facebook/gamingservices/TournamentConfig;)Lcom/facebook/internal/AppCall;
    .registers 7

    .line 2
    sget-object v0, Lcom/facebook/AccessToken;->Companion:Lcom/facebook/AccessToken$Companion;

    invoke-virtual {v0}, Lcom/facebook/AccessToken$Companion;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/facebook/gamingservices/TournamentShareDialog$FacebookAppHandler;->this$0:Lcom/facebook/gamingservices/TournamentShareDialog;

    invoke-virtual {v1}, Lcom/facebook/gamingservices/TournamentShareDialog;->createBaseAppCall()Lcom/facebook/internal/AppCall;

    move-result-object v1

    .line 4
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.facebook.games.gaming_services.DEEPLINK"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "text/plain"

    .line 5
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    if-eqz v0, :cond_80

    .line 6
    invoke-virtual {v0}, Lcom/facebook/AccessToken;->isExpired()Z

    move-result v3

    if-nez v3, :cond_80

    .line 7
    invoke-virtual {v0}, Lcom/facebook/AccessToken;->getGraphDomain()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3b

    .line 8
    invoke-virtual {v0}, Lcom/facebook/AccessToken;->getGraphDomain()Ljava/lang/String;

    move-result-object v3

    const-string v4, "gaming"

    invoke-static {v4, v3}, Lt9/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    goto :goto_3b

    .line 9
    :cond_33
    new-instance p1, Lcom/facebook/FacebookException;

    const-string v0, "Attempted to share tournament while user is not gaming logged in"

    invoke-direct {p1, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_3b
    :goto_3b
    invoke-virtual {v0}, Lcom/facebook/AccessToken;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    .line 11
    iget-object v3, p0, Lcom/facebook/gamingservices/TournamentShareDialog$FacebookAppHandler;->this$0:Lcom/facebook/gamingservices/TournamentShareDialog;

    invoke-virtual {v3}, Lcom/facebook/gamingservices/TournamentShareDialog;->getScore()Ljava/lang/Number;

    move-result-object v3

    if-eqz v3, :cond_78

    if-eqz p1, :cond_50

    .line 12
    sget-object v4, Lcom/facebook/gamingservices/internal/TournamentShareDialogURIBuilder;->INSTANCE:Lcom/facebook/gamingservices/internal/TournamentShareDialogURIBuilder;

    invoke-virtual {v4, p1, v3, v0}, Lcom/facebook/gamingservices/internal/TournamentShareDialogURIBuilder;->bundleForCreating$facebook_gamingservices_release(Lcom/facebook/gamingservices/TournamentConfig;Ljava/lang/Number;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_62

    .line 13
    :cond_50
    iget-object p1, p0, Lcom/facebook/gamingservices/TournamentShareDialog$FacebookAppHandler;->this$0:Lcom/facebook/gamingservices/TournamentShareDialog;

    invoke-virtual {p1}, Lcom/facebook/gamingservices/TournamentShareDialog;->getTournament()Lcom/facebook/gamingservices/Tournament;

    move-result-object p1

    if-nez p1, :cond_5a

    const/4 p1, 0x0

    goto :goto_62

    .line 14
    :cond_5a
    sget-object v4, Lcom/facebook/gamingservices/internal/TournamentShareDialogURIBuilder;->INSTANCE:Lcom/facebook/gamingservices/internal/TournamentShareDialogURIBuilder;

    iget-object p1, p1, Lcom/facebook/gamingservices/Tournament;->identifier:Ljava/lang/String;

    invoke-virtual {v4, p1, v3, v0}, Lcom/facebook/gamingservices/internal/TournamentShareDialogURIBuilder;->bundleForUpdating$facebook_gamingservices_release(Ljava/lang/String;Ljava/lang/Number;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 15
    :goto_62
    sget-object v0, Lcom/facebook/internal/NativeProtocol;->INSTANCE:Lcom/facebook/internal/NativeProtocol;

    .line 16
    invoke-virtual {v1}, Lcom/facebook/internal/AppCall;->getCallId()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const v3, 0x13464da

    const-string v4, ""

    .line 17
    invoke-static {v2, v0, v4, v3, p1}, Lcom/facebook/internal/NativeProtocol;->setupProtocolRequestIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 18
    invoke-virtual {v1, v2}, Lcom/facebook/internal/AppCall;->setRequestIntent(Landroid/content/Intent;)V

    return-object v1

    .line 19
    :cond_78
    new-instance p1, Lcom/facebook/FacebookException;

    const-string v0, "Attempted to share tournament without a score"

    invoke-direct {p1, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 20
    :cond_80
    new-instance p1, Lcom/facebook/FacebookException;

    const-string v0, "Attempted to share tournament with an invalid access token"

    invoke-direct {p1, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic createAppCall(Ljava/lang/Object;)Lcom/facebook/internal/AppCall;
    .registers 2

    .line 1
    check-cast p1, Lcom/facebook/gamingservices/TournamentConfig;

    invoke-virtual {p0, p1}, Lcom/facebook/gamingservices/TournamentShareDialog$FacebookAppHandler;->createAppCall(Lcom/facebook/gamingservices/TournamentConfig;)Lcom/facebook/internal/AppCall;

    move-result-object p1

    return-object p1
.end method

###### Class com.facebook.gamingservices.TournamentShareDialog.Result (com.facebook.gamingservices.TournamentShareDialog$Result)
.class public final Lcom/facebook/gamingservices/TournamentShareDialog$Result;
.super Ljava/lang/Object;
.source "TournamentShareDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/gamingservices/TournamentShareDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Result"
.end annotation


# instance fields
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

    iput-object v0, p0, Lcom/facebook/gamingservices/TournamentShareDialog$Result;->requestID:Ljava/lang/String;

    :cond_16
    const-string v0, "tournament_id"

    .line 4
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/gamingservices/TournamentShareDialog$Result;->tournamentID:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getRequestID()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/facebook/gamingservices/TournamentShareDialog$Result;->requestID:Ljava/lang/String;

    return-object v0
.end method

.method public final getTournamentID()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/facebook/gamingservices/TournamentShareDialog$Result;->tournamentID:Ljava/lang/String;

    return-object v0
.end method

.method public final setRequestID(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/facebook/gamingservices/TournamentShareDialog$Result;->requestID:Ljava/lang/String;

    return-void
.end method

.method public final setTournamentID(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/facebook/gamingservices/TournamentShareDialog$Result;->tournamentID:Ljava/lang/String;

    return-void
.end method

###### Class com.facebook.gamingservices.TournamentShareDialog$registerCallbackImpl$resultProcessor$1 (com.facebook.gamingservices.TournamentShareDialog$registerCallbackImpl$resultProcessor$1)
.class public final Lcom/facebook/gamingservices/TournamentShareDialog$registerCallbackImpl$resultProcessor$1;
.super Lcom/facebook/share/internal/ResultProcessor;
.source "TournamentShareDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/gamingservices/TournamentShareDialog;->registerCallbackImpl(Lcom/facebook/internal/CallbackManagerImpl;Lcom/facebook/FacebookCallback;)V
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
            "Lcom/facebook/gamingservices/TournamentShareDialog$Result;",
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
            "Lcom/facebook/gamingservices/TournamentShareDialog$Result;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/gamingservices/TournamentShareDialog$registerCallbackImpl$resultProcessor$1;->$callback:Lcom/facebook/FacebookCallback;

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
    iget-object p1, p0, Lcom/facebook/gamingservices/TournamentShareDialog$registerCallbackImpl$resultProcessor$1;->$callback:Lcom/facebook/FacebookCallback;

    new-instance v1, Lcom/facebook/FacebookException;

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v1}, Lcom/facebook/FacebookCallback;->onError(Lcom/facebook/FacebookException;)V

    return-void

    :cond_1e
    const-string v0, "tournament_id"

    .line 3
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 4
    iget-object p1, p0, Lcom/facebook/gamingservices/TournamentShareDialog$registerCallbackImpl$resultProcessor$1;->$callback:Lcom/facebook/FacebookCallback;

    new-instance v0, Lcom/facebook/gamingservices/TournamentShareDialog$Result;

    invoke-direct {v0, p2}, Lcom/facebook/gamingservices/TournamentShareDialog$Result;-><init>(Landroid/os/Bundle;)V

    invoke-interface {p1, v0}, Lcom/facebook/FacebookCallback;->onSuccess(Ljava/lang/Object;)V

    return-void

    .line 5
    :cond_31
    invoke-virtual {p0, p1}, Lcom/facebook/share/internal/ResultProcessor;->onCancel(Lcom/facebook/internal/AppCall;)V

    return-void
.end method

###### Class com.facebook.gamingservices.i (com.facebook.gamingservices.i)
.class public final synthetic Lcom/facebook/gamingservices/i;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/facebook/internal/CallbackManagerImpl$Callback;


# instance fields
.field public final synthetic a:Lcom/facebook/gamingservices/TournamentShareDialog;

.field public final synthetic b:Lcom/facebook/share/internal/ResultProcessor;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/gamingservices/TournamentShareDialog;Lcom/facebook/share/internal/ResultProcessor;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/gamingservices/i;->a:Lcom/facebook/gamingservices/TournamentShareDialog;

    iput-object p2, p0, Lcom/facebook/gamingservices/i;->b:Lcom/facebook/share/internal/ResultProcessor;

    return-void
.end method


# virtual methods
.method public final onActivityResult(ILandroid/content/Intent;)Z
    .registers 5

    iget-object v0, p0, Lcom/facebook/gamingservices/i;->a:Lcom/facebook/gamingservices/TournamentShareDialog;

    iget-object v1, p0, Lcom/facebook/gamingservices/i;->b:Lcom/facebook/share/internal/ResultProcessor;

    invoke-static {v0, v1, p1, p2}, Lcom/facebook/gamingservices/TournamentShareDialog;->a(Lcom/facebook/gamingservices/TournamentShareDialog;Lcom/facebook/share/internal/ResultProcessor;ILandroid/content/Intent;)Z

    move-result p1

    return p1
.end method
