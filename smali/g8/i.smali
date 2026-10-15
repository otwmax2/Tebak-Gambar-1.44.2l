###### Class g8.i (g8.i)
.class public final synthetic Lg8/i;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Lj8/c0;


# direct methods
.method public synthetic constructor <init>(Lj8/c0;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg8/i;->o:Lj8/c0;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lg8/i;->o:Lj8/c0;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
