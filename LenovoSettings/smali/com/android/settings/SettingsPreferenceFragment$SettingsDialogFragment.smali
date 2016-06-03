.class public Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment$SettingsDialogFragment;
.super Landroid/app/DialogFragment;
.source "SettingsPreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SettingsDialogFragment"
.end annotation


# static fields
.field private static final KEY_DIALOG_ID:Ljava/lang/String; = "key_dialog_id"

.field private static final KEY_PARENT_FRAGMENT_ID:Ljava/lang/String; = "key_parent_fragment_id"


# instance fields
.field private mDialogId:I

.field private mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field private mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mParentFragment:Landroid/app/Fragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 325
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 327
    return-void
.end method

.method public constructor <init>(Lcom/flyme/deviceoriginalsettings/DialogCreatable;I)V
    .locals 3
    .param p1, "fragment"    # Lcom/flyme/deviceoriginalsettings/DialogCreatable;
    .param p2, "dialogId"    # I

    .prologue
    .line 329
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 330
    iput p2, p0, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment$SettingsDialogFragment;->mDialogId:I

    .line 331
    instance-of v0, p1, Landroid/app/Fragment;

    if-nez v0, :cond_0

    .line 332
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fragment argument must be an instance of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Landroid/app/Fragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 335
    :cond_0
    check-cast p1, Landroid/app/Fragment;

    .end local p1    # "fragment":Lcom/flyme/deviceoriginalsettings/DialogCreatable;
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    .line 336
    return-void
.end method

.method static synthetic access$102(Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment$SettingsDialogFragment;Landroid/content/DialogInterface$OnCancelListener;)Landroid/content/DialogInterface$OnCancelListener;
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment$SettingsDialogFragment;
    .param p1, "x1"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 314
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment$SettingsDialogFragment;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    return-object p1
.end method

.method static synthetic access$202(Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment$SettingsDialogFragment;Landroid/content/DialogInterface$OnDismissListener;)Landroid/content/DialogInterface$OnDismissListener;
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment$SettingsDialogFragment;
    .param p1, "x1"    # Landroid/content/DialogInterface$OnDismissListener;

    .prologue
    .line 314
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment$SettingsDialogFragment;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-object p1
.end method


# virtual methods
.method public getDialogId()I
    .locals 1

    .prologue
    .line 398
    iget v0, p0, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment$SettingsDialogFragment;->mDialogId:I

    return v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 383
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 384
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment$SettingsDialogFragment;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment$SettingsDialogFragment;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    .line 387
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, -0x1

    .line 358
    if-eqz p1, :cond_2

    .line 359
    const-string v1, "key_dialog_id"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment$SettingsDialogFragment;->mDialogId:I

    .line 360
    const-string v1, "key_parent_fragment_id"

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 361
    .local v0, "mParentFragmentId":I
    if-le v0, v3, :cond_1

    .line 362
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment$SettingsDialogFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    .line 363
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    instance-of v1, v1, Lcom/flyme/deviceoriginalsettings/DialogCreatable;

    if-nez v1, :cond_1

    .line 364
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " must implement "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v3, Lcom/flyme/deviceoriginalsettings/DialogCreatable;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 373
    :cond_1
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    instance-of v1, v1, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;

    if-eqz v1, :cond_2

    .line 375
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    check-cast v1, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;

    # setter for: Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->mDialogFragment:Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment$SettingsDialogFragment;
    invoke-static {v1, p0}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->access$302(Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment$SettingsDialogFragment;)Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment$SettingsDialogFragment;

    .line 378
    .end local v0    # "mParentFragmentId":I
    :cond_2
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    check-cast v1, Lcom/flyme/deviceoriginalsettings/DialogCreatable;

    iget v2, p0, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment$SettingsDialogFragment;->mDialogId:I

    invoke-interface {v1, v2}, Lcom/flyme/deviceoriginalsettings/DialogCreatable;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    return-object v1
.end method

.method public onDetach()V
    .locals 2

    .prologue
    .line 403
    invoke-super {p0}, Landroid/app/DialogFragment;->onDetach()V

    .line 406
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    instance-of v0, v0, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    check-cast v0, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;

    # getter for: Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->mDialogFragment:Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment$SettingsDialogFragment;
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->access$300(Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;)Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment$SettingsDialogFragment;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    check-cast v0, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;

    const/4 v1, 0x0

    # setter for: Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->mDialogFragment:Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment$SettingsDialogFragment;
    invoke-static {v0, v1}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->access$302(Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment$SettingsDialogFragment;)Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment$SettingsDialogFragment;

    .line 412
    :cond_0
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 391
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 392
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment$SettingsDialogFragment;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment$SettingsDialogFragment;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    .line 395
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 340
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 341
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    if-eqz v0, :cond_0

    .line 342
    const-string v0, "key_dialog_id"

    iget v1, p0, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment$SettingsDialogFragment;->mDialogId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 343
    const-string v0, "key_parent_fragment_id"

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 345
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 349
    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    .line 351
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    instance-of v0, v0, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    check-cast v0, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;

    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onDialogShowing()V

    .line 354
    :cond_0
    return-void
.end method
