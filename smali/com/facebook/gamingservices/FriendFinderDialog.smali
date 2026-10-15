###### Class com.facebook.gamingservices.FriendFinderDialog (com.facebook.gamingservices.FriendFinderDialog)
.class public Lcom/facebook/gamingservices/FriendFinderDialog;
.super Lcom/facebook/internal/FacebookDialogBase;
.source "FriendFinderDialog.java"


# annotations
.annotation build Lcom/facebook/internal/instrument/crashshield/AutoHandleExceptions;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/gamingservices/FriendFinderDialog$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/internal/FacebookDialogBase<",
        "Ljava/lang/Void;",
        "Lcom/facebook/gamingservices/FriendFinderDialog$Result;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_REQUEST_CODE:I


# instance fields
.field private mCallback:Lcom/facebook/FacebookCallback;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    sget-object v0, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->GamingFriendFinder:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    .line 2
    invoke-virtual {v0}, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->toRequestCode()I

    move-result v0

    sput v0, Lcom/facebook/gamingservices/FriendFinderDialog;->DEFAULT_REQUEST_CODE:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .registers 3

    .line 1
    sget v0, Lcom/facebook/gamingservices/FriendFinderDialog;->DEFAULT_REQUEST_CODE:I

    invoke-direct {p0, p1, v0}, Lcom/facebook/internal/FacebookDialogBase;-><init>(Landroid/app/Activity;I)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Fragment;)V
    .registers 3

    .line 2
    new-instance v0, Lcom/facebook/internal/FragmentWrapper;

    invoke-direct {v0, p1}, Lcom/facebook/internal/FragmentWrapper;-><init>(Landroid/app/Fragment;)V

    sget p1, Lcom/facebook/gamingservices/FriendFinderDialog;->DEFAULT_REQUEST_CODE:I

    invoke-direct {p0, v0, p1}, Lcom/facebook/internal/FacebookDialogBase;-><init>(Lcom/facebook/internal/FragmentWrapper;I)V

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/Fragment;)V
    .registers 3

    .line 3
    new-instance v0, Lcom/facebook/internal/FragmentWrapper;

    invoke-direct {v0, p1}, Lcom/facebook/internal/FragmentWrapper;-><init>(Landroidx/fragment/app/Fragment;)V

    sget p1, Lcom/facebook/gamingservices/FriendFinderDialog;->DEFAULT_REQUEST_CODE:I

    invoke-direct {p0, v0, p1}, Lcom/facebook/internal/FacebookDialogBase;-><init>(Lcom/facebook/internal/FragmentWrapper;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/gamingservices/FriendFinderDialog;)Lcom/facebook/FacebookCallback;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/facebook/gamingservices/FriendFinderDialog;->mCallback:Lcom/facebook/FacebookCallback;

    return-object p0
.end method


# virtual methods
.method protected createBaseAppCall()Lcom/facebook/internal/AppCall;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getOrderedModeHandlers()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/internal/FacebookDialogBase<",
            "Ljava/lang/Void;",
            "Lcom/facebook/gamingservices/FriendFinderDialog$Result;",
            ">.ModeHandler;>;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method protected registerCallbackImpl(Lcom/facebook/internal/CallbackManagerImpl;Lcom/facebook/FacebookCallback;)V
    .registers 5

    .line 1
    iput-object p2, p0, Lcom/facebook/gamingservices/FriendFinderDialog;->mCallback:Lcom/facebook/FacebookCallback;

    .line 2
    invoke-virtual {p0}, Lcom/facebook/internal/FacebookDialogBase;->getRequestCode()I

    move-result v0

    new-instance v1, Lcom/facebook/gamingservices/FriendFinderDialog$2;

    invoke-direct {v1, p0, p2}, Lcom/facebook/gamingservices/FriendFinderDialog$2;-><init>(Lcom/facebook/gamingservices/FriendFinderDialog;Lcom/facebook/FacebookCallback;)V

    .line 3
    invoke-virtual {p1, v0, v1}, Lcom/facebook/internal/CallbackManagerImpl;->registerCallback(ILcom/facebook/internal/CallbackManagerImpl$Callback;)V

    return-void
.end method

.method public show()V
    .registers 1

    .line 2
    invoke-virtual {p0}, Lcom/facebook/gamingservices/FriendFinderDialog;->showImpl()V

    return-void
.end method

.method public bridge synthetic show(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/facebook/gamingservices/FriendFinderDialog;->show(Ljava/lang/Void;)V

    return-void
.end method

.method public show(Ljava/lang/Void;)V
    .registers 2

    .line 3
    invoke-virtual {p0}, Lcom/facebook/gamingservices/FriendFinderDialog;->showImpl()V

    return-void
.end method

.method protected showImpl()V
    .registers 6

    .line 1
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    if-eqz v0, :cond_6a

    .line 2
    invoke-virtual {v0}, Lcom/facebook/AccessToken;->isExpired()Z

    move-result v1

    if-nez v1, :cond_6a

    .line 3
    invoke-virtual {v0}, Lcom/facebook/AccessToken;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {}, Lcom/facebook/gamingservices/cloudgaming/CloudGameLoginHandler;->isRunningInCloud()Z

    move-result v1

    if-eqz v1, :cond_46

    .line 5
    invoke-virtual {p0}, Lcom/facebook/internal/FacebookDialogBase;->getActivityContext()Landroid/app/Activity;

    move-result-object v1

    .line 6
    new-instance v2, Lcom/facebook/gamingservices/FriendFinderDialog$1;

    invoke-direct {v2, p0}, Lcom/facebook/gamingservices/FriendFinderDialog$1;-><init>(Lcom/facebook/gamingservices/FriendFinderDialog;)V

    .line 7
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    :try_start_24
    const-string v4, "id"

    .line 8
    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "deepLink"

    const-string v4, "FRIEND_FINDER"

    .line 9
    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 10
    sget-object v0, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;->OPEN_GAMING_SERVICES_DEEP_LINK:Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;

    invoke-static {v1, v3, v2, v0}, Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;->executeAsync(Landroid/content/Context;Lorg/json/JSONObject;Lcom/facebook/gamingservices/cloudgaming/DaemonRequest$Callback;Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;)V
    :try_end_35
    .catch Lorg/json/JSONException; {:try_start_24 .. :try_end_35} :catch_36

    goto :goto_45

    :catch_36
    nop

    .line 11
    iget-object v0, p0, Lcom/facebook/gamingservices/FriendFinderDialog;->mCallback:Lcom/facebook/FacebookCallback;

    if-eqz v0, :cond_45

    .line 12
    new-instance v1, Lcom/facebook/FacebookException;

    const-string v2, "Couldn\'t prepare Friend Finder Dialog"

    invoke-direct {v1, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/facebook/FacebookCallback;->onError(Lcom/facebook/FacebookException;)V

    :cond_45
    :goto_45
    return-void

    .line 13
    :cond_46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://fb.gg/me/friendfinder/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 14
    new-instance v1, Landroid/content/Intent;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 15
    invoke-virtual {p0}, Lcom/facebook/internal/FacebookDialogBase;->getRequestCode()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/facebook/internal/FacebookDialogBase;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    .line 16
    :cond_6a
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "Attempted to open GamingServices FriendFinder with an invalid access token"

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

###### Class com.facebook.gamingservices.FriendFinderDialog.AnonymousClass1 (com.facebook.gamingservices.FriendFinderDialog$1)
.class Lcom/facebook/gamingservices/FriendFinderDialog$1;
.super Ljava/lang/Object;
.source "FriendFinderDialog.java"

# interfaces
.implements Lcom/facebook/gamingservices/cloudgaming/DaemonRequest$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/gamingservices/FriendFinderDialog;->showImpl()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/gamingservices/FriendFinderDialog;


# direct methods
.method constructor <init>(Lcom/facebook/gamingservices/FriendFinderDialog;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/facebook/gamingservices/FriendFinderDialog$1;->this$0:Lcom/facebook/gamingservices/FriendFinderDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/GraphResponse;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/facebook/gamingservices/FriendFinderDialog$1;->this$0:Lcom/facebook/gamingservices/FriendFinderDialog;

    invoke-static {v0}, Lcom/facebook/gamingservices/FriendFinderDialog;->access$000(Lcom/facebook/gamingservices/FriendFinderDialog;)Lcom/facebook/FacebookCallback;

    move-result-object v0

    if-eqz v0, :cond_33

    .line 2
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 3
    iget-object v0, p0, Lcom/facebook/gamingservices/FriendFinderDialog$1;->this$0:Lcom/facebook/gamingservices/FriendFinderDialog;

    invoke-static {v0}, Lcom/facebook/gamingservices/FriendFinderDialog;->access$000(Lcom/facebook/gamingservices/FriendFinderDialog;)Lcom/facebook/FacebookCallback;

    move-result-object v0

    new-instance v1, Lcom/facebook/FacebookException;

    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/FacebookRequestError;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/facebook/FacebookCallback;->onError(Lcom/facebook/FacebookException;)V

    goto :goto_33

    .line 4
    :cond_25
    iget-object p1, p0, Lcom/facebook/gamingservices/FriendFinderDialog$1;->this$0:Lcom/facebook/gamingservices/FriendFinderDialog;

    invoke-static {p1}, Lcom/facebook/gamingservices/FriendFinderDialog;->access$000(Lcom/facebook/gamingservices/FriendFinderDialog;)Lcom/facebook/FacebookCallback;

    move-result-object p1

    new-instance v0, Lcom/facebook/gamingservices/FriendFinderDialog$Result;

    invoke-direct {v0}, Lcom/facebook/gamingservices/FriendFinderDialog$Result;-><init>()V

    invoke-interface {p1, v0}, Lcom/facebook/FacebookCallback;->onSuccess(Ljava/lang/Object;)V

    :cond_33
    :goto_33
    return-void
.end method

###### Class com.facebook.gamingservices.FriendFinderDialog.AnonymousClass2 (com.facebook.gamingservices.FriendFinderDialog$2)
.class Lcom/facebook/gamingservices/FriendFinderDialog$2;
.super Ljava/lang/Object;
.source "FriendFinderDialog.java"

# interfaces
.implements Lcom/facebook/internal/CallbackManagerImpl$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/gamingservices/FriendFinderDialog;->registerCallbackImpl(Lcom/facebook/internal/CallbackManagerImpl;Lcom/facebook/FacebookCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/gamingservices/FriendFinderDialog;

.field final synthetic val$callback:Lcom/facebook/FacebookCallback;


# direct methods
.method constructor <init>(Lcom/facebook/gamingservices/FriendFinderDialog;Lcom/facebook/FacebookCallback;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/facebook/gamingservices/FriendFinderDialog$2;->this$0:Lcom/facebook/gamingservices/FriendFinderDialog;

    iput-object p2, p0, Lcom/facebook/gamingservices/FriendFinderDialog$2;->val$callback:Lcom/facebook/FacebookCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(ILandroid/content/Intent;)Z
    .registers 5

    const/4 p1, 0x1

    if-eqz p2, :cond_1b

    const-string v0, "error"

    .line 1
    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 2
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/facebook/FacebookRequestError;

    .line 3
    iget-object v0, p0, Lcom/facebook/gamingservices/FriendFinderDialog$2;->val$callback:Lcom/facebook/FacebookCallback;

    invoke-virtual {p2}, Lcom/facebook/FacebookRequestError;->getException()Lcom/facebook/FacebookException;

    move-result-object p2

    invoke-interface {v0, p2}, Lcom/facebook/FacebookCallback;->onError(Lcom/facebook/FacebookException;)V

    return p1

    .line 4
    :cond_1b
    iget-object p2, p0, Lcom/facebook/gamingservices/FriendFinderDialog$2;->val$callback:Lcom/facebook/FacebookCallback;

    new-instance v0, Lcom/facebook/gamingservices/FriendFinderDialog$Result;

    invoke-direct {v0}, Lcom/facebook/gamingservices/FriendFinderDialog$Result;-><init>()V

    invoke-interface {p2, v0}, Lcom/facebook/FacebookCallback;->onSuccess(Ljava/lang/Object;)V

    return p1
.end method

###### Class com.facebook.gamingservices.FriendFinderDialog.Result (com.facebook.gamingservices.FriendFinderDialog$Result)
.class public Lcom/facebook/gamingservices/FriendFinderDialog$Result;
.super Ljava/lang/Object;
.source "FriendFinderDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/gamingservices/FriendFinderDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
