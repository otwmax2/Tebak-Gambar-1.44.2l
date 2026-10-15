###### Class com.tebakgambar.sendquestion.SendQuestionActivity (com.tebakgambar.sendquestion.SendQuestionActivity)
.class public Lcom/tebakgambar/sendquestion/SendQuestionActivity;
.super Lj8/t;
.source "SendQuestionActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tebakgambar/sendquestion/SendQuestionActivity$a;
    }
.end annotation


# instance fields
.field y:Lcom/tebakgambar/sendquestion/a;

.field z:Lo8/s;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lj8/t;-><init>()V

    return-void
.end method

.method public static synthetic U0(Lcom/tebakgambar/sendquestion/SendQuestionActivity;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lj8/t;->O0(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic V0(Lcom/tebakgambar/sendquestion/SendQuestionActivity;)Lj8/c0;
    .registers 1

    .line 1
    invoke-virtual {p0}, Lj8/t;->I0()Lj8/c0;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected A0(Z)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Lj8/t;->A0(Z)V

    .line 2
    iget-object v0, p0, Lcom/tebakgambar/sendquestion/SendQuestionActivity;->z:Lo8/s;

    iget-object v0, v0, Lo8/s;->V:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_c

    const/16 p1, 0x8

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/e;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-static {p0}, Landroidx/lifecycle/k0;->b(Landroidx/fragment/app/e;)Landroidx/lifecycle/h0;

    move-result-object p1

    const-class v0, Lcom/tebakgambar/sendquestion/a;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/h0;->a(Ljava/lang/Class;)Landroidx/lifecycle/g0;

    move-result-object p1

    check-cast p1, Lcom/tebakgambar/sendquestion/a;

    iput-object p1, p0, Lcom/tebakgambar/sendquestion/SendQuestionActivity;->y:Lcom/tebakgambar/sendquestion/a;

    const p1, 0x7f0d002a

    .line 3
    invoke-static {p0, p1}, Landroidx/databinding/g;->j(Landroid/app/Activity;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lo8/s;

    iput-object p1, p0, Lcom/tebakgambar/sendquestion/SendQuestionActivity;->z:Lo8/s;

    .line 4
    iget-object v0, p0, Lcom/tebakgambar/sendquestion/SendQuestionActivity;->y:Lcom/tebakgambar/sendquestion/a;

    invoke-virtual {p1, v0}, Lo8/s;->w0(Lcom/tebakgambar/sendquestion/a;)V

    .line 5
    iget-object p1, p0, Lcom/tebakgambar/sendquestion/SendQuestionActivity;->z:Lo8/s;

    new-instance v0, Lcom/tebakgambar/sendquestion/SendQuestionActivity$a;

    invoke-direct {v0, p0}, Lcom/tebakgambar/sendquestion/SendQuestionActivity$a;-><init>(Lcom/tebakgambar/sendquestion/SendQuestionActivity;)V

    invoke-virtual {p1, v0}, Lo8/s;->u0(Lcom/tebakgambar/sendquestion/SendQuestionActivity$a;)V

    .line 6
    invoke-static {p0}, Ly2/a;->b(Landroid/app/Activity;)V

    .line 7
    iget-object p1, p0, Lcom/tebakgambar/sendquestion/SendQuestionActivity;->y:Lcom/tebakgambar/sendquestion/a;

    iget-object p1, p1, Lcom/tebakgambar/sendquestion/a;->v:Landroidx/lifecycle/t;

    new-instance v0, Lv8/a;

    invoke-direct {v0, p0}, Lv8/a;-><init>(Lcom/tebakgambar/sendquestion/SendQuestionActivity;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/n;Landroidx/lifecycle/u;)V

    const p1, 0x7f0a0120

    .line 8
    invoke-virtual {p0, p1}, Lj8/t;->D0(I)V

    return-void
.end method

###### Class com.tebakgambar.sendquestion.SendQuestionActivity.a (com.tebakgambar.sendquestion.SendQuestionActivity$a)
.class public Lcom/tebakgambar/sendquestion/SendQuestionActivity$a;
.super Ljava/lang/Object;
.source "SendQuestionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tebakgambar/sendquestion/SendQuestionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/tebakgambar/sendquestion/SendQuestionActivity;


# direct methods
.method public constructor <init>(Lcom/tebakgambar/sendquestion/SendQuestionActivity;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/sendquestion/SendQuestionActivity$a;->a:Lcom/tebakgambar/sendquestion/SendQuestionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lj8/c0;Ljava/lang/Boolean;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/tebakgambar/sendquestion/SendQuestionActivity$a;->b(Lj8/c0;Ljava/lang/Boolean;)V

    return-void
.end method

.method private static synthetic b(Lj8/c0;Ljava/lang/Boolean;)V
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method


# virtual methods
.method public c(Landroid/view/View;)V
    .registers 5

    .line 1
    iget-object p1, p0, Lcom/tebakgambar/sendquestion/SendQuestionActivity$a;->a:Lcom/tebakgambar/sendquestion/SendQuestionActivity;

    invoke-static {p1}, Lcom/tebakgambar/sendquestion/SendQuestionActivity;->V0(Lcom/tebakgambar/sendquestion/SendQuestionActivity;)Lj8/c0;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/tebakgambar/sendquestion/SendQuestionActivity$a;->a:Lcom/tebakgambar/sendquestion/SendQuestionActivity;

    iget-object v0, v0, Lcom/tebakgambar/sendquestion/SendQuestionActivity;->y:Lcom/tebakgambar/sendquestion/a;

    invoke-virtual {v0}, Lcom/tebakgambar/sendquestion/a;->r()Landroidx/lifecycle/LiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/tebakgambar/sendquestion/SendQuestionActivity$a;->a:Lcom/tebakgambar/sendquestion/SendQuestionActivity;

    new-instance v2, Lv8/b;

    invoke-direct {v2, p1}, Lv8/b;-><init>(Lj8/c0;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/n;Landroidx/lifecycle/u;)V

    return-void
.end method

###### Class v8.b (v8.b)
.class public final synthetic Lv8/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/u;


# instance fields
.field public final synthetic a:Lj8/c0;


# direct methods
.method public synthetic constructor <init>(Lj8/c0;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv8/b;->a:Lj8/c0;

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lv8/b;->a:Lj8/c0;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, p1}, Lcom/tebakgambar/sendquestion/SendQuestionActivity$a;->a(Lj8/c0;Ljava/lang/Boolean;)V

    return-void
.end method

###### Class v8.a (v8.a)
.class public final synthetic Lv8/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/u;


# instance fields
.field public final synthetic a:Lcom/tebakgambar/sendquestion/SendQuestionActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/sendquestion/SendQuestionActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv8/a;->a:Lcom/tebakgambar/sendquestion/SendQuestionActivity;

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lv8/a;->a:Lcom/tebakgambar/sendquestion/SendQuestionActivity;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/tebakgambar/sendquestion/SendQuestionActivity;->U0(Lcom/tebakgambar/sendquestion/SendQuestionActivity;Ljava/lang/String;)V

    return-void
.end method
