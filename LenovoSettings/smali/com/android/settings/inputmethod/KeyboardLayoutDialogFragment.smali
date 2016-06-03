.class public Lcom/flyme/deviceoriginalsettings/inputmethod/KeyboardLayoutDialogFragment;
.super Landroid/app/DialogFragment;
.source "KeyboardLayoutDialogFragment.java"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/deviceoriginalsettings/inputmethod/KeyboardLayoutDialogFragment$OnSetupKeyboardLayoutsListener;,
        Lcom/flyme/deviceoriginalsettings/inputmethod/KeyboardLayoutDialogFragment$Keyboards;,
        Lcom/flyme/deviceoriginalsettings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutLoader;,
        Lcom/flyme/deviceoriginalsettings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/DialogFragment;",
        "Landroid/hardware/input/InputManager$InputDeviceListener;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Lcom/flyme/deviceoriginalsettings/inputmethod/KeyboardLayoutDialogFragment$Keyboards;",
        ">;"
    }
.end annotation


# static fields
.field private static final KEY_INPUT_DEVICE_IDENTIFIER:Ljava/lang/String; = "inputDeviceIdentifier"


# instance fields
.field private mAdapter:Lcom/flyme/deviceoriginalsettings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;

.field private mIm:Landroid/hardware/input/InputManager;

.field private mInputDeviceId:I

.field private mInputDeviceIdentifier:Landroid/hardware/input/InputDeviceIdentifier;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 55
    const/4 v0, -0x1

    iput v0, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/KeyboardLayoutDialogFragment;->mInputDeviceId:I

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/hardware/input/InputDeviceIdentifier;)V
    .locals 1
    .param p1, "inputDeviceIdentifier"    # Landroid/hardware/input/InputDeviceIdentifier;

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 55
    const/4 v0, -0x1

    iput v0, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/KeyboardLayoutDialogFragment;->mInputDeviceId:I

    .line 63
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/KeyboardLayoutDialogFragment;->mInputDeviceIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

    .line 64
    return-void
.end method

.method static synthetic access$000(Lcom/flyme/deviceoriginalsettings/inputmethod/KeyboardLayoutDialogFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/inputmethod/KeyboardLayoutDialogFragment;
    .param p1, "x1"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/flyme/deviceoriginalsettings/inputmethod/KeyboardLayoutDialogFragment;->onKeyboardLayoutClicked(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/flyme/deviceoriginalsettings/inputmethod/KeyboardLayoutDialogFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/inputmethod/KeyboardLayoutDialogFragment;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/KeyboardLayoutDialogFragment;->onSetupLayoutsButtonClicked()V

    return-void
.end method

.method private onKeyboardLayoutClicked(I)V
    .locals 4
    .param p1, "which"    # I

    .prologue
    .line 158
    if-ltz p1, :cond_1

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/KeyboardLayoutDialogFragment;->mAdapter:Lcom/flyme/deviceoriginalsettings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;

    invoke-virtual {v1}, Lcom/flyme/deviceoriginalsettings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;->getCount()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 159
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/KeyboardLayoutDialogFragment;->mAdapter:Lcom/flyme/deviceoriginalsettings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;

    invoke-virtual {v1, p1}, Lcom/flyme/deviceoriginalsettings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/KeyboardLayout;

    .line 160
    .local v0, "keyboardLayout":Landroid/hardware/input/KeyboardLayout;
    if-eqz v0, :cond_0

    .line 161
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/KeyboardLayoutDialogFragment;->mIm:Landroid/hardware/input/InputManager;

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/KeyboardLayoutDialogFragment;->mInputDeviceIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

    invoke-virtual {v0}, Landroid/hardware/input/KeyboardLayout;->getDescriptor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/input/InputManager;->setCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V

    .line 164
    :cond_0
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/KeyboardLayoutDialogFragment;->dismiss()V

    .line 166
    .end local v0    # "keyboardLayout":Landroid/hardware/input/KeyboardLayout;
    :cond_1
    return-void
.end method

.method private onSetupLayoutsButtonClicked()V
    .locals 2

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/KeyboardLayoutDialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/flyme/deviceoriginalsettings/inputmethod/KeyboardLayoutDialogFragment$OnSetupKeyboardLayoutsListener;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/KeyboardLayoutDialogFragment;->mInputDeviceIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

    invoke-interface {v0, v1}, Lcom/flyme/deviceoriginalsettings/inputmethod/KeyboardLayoutDialogFragment$OnSetupKeyboardLayoutsListener;->onSetupKeyboardLayouts(Landroid/hardware/input/InputDeviceIdentifier;)V

    .line 149
    return-void
.end method

.method private updateSwitchHintVisibility()V
    .locals 4

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/KeyboardLayoutDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    check-cast v1, Landroid/app/AlertDialog;

    .line 211
    .local v1, "dialog":Landroid/app/AlertDialog;
    if-eqz v1, :cond_0

    .line 212
    const v2, 0x10202c7

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 213
    .local v0, "customPanel":Landroid/view/View;
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/KeyboardLayoutDialogFragment;->mAdapter:Lcom/flyme/deviceoriginalsettings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;

    invoke-virtual {v2}, Lcom/flyme/deviceoriginalsettings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;->getCount()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 215
    .end local v0    # "customPanel":Landroid/view/View;
    :cond_0
    return-void

    .line 213
    .restart local v0    # "customPanel":Landroid/view/View;
    :cond_1
    const/16 v2, 0x8

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 153
    invoke-super {p0, p1, p2, p3}, Landroid/app/DialogFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 154
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/KeyboardLayoutDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "layout"

    invoke-virtual {p0, v0, v1}, Lcom/flyme/deviceoriginalsettings/inputmethod/KeyboardLayoutDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 155
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 68
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 70
    invoke-virtual {p1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 71
    .local v0, "context":Landroid/content/Context;
    const-string v1, "input"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputManager;

    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/KeyboardLayoutDialogFragment;->mIm:Landroid/hardware/input/InputManager;

    .line 72
    new-instance v1, Lcom/flyme/deviceoriginalsettings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;

    invoke-direct {v1, v0}, Lcom/flyme/deviceoriginalsettings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/KeyboardLayoutDialogFragment;->mAdapter:Lcom/flyme/deviceoriginalsettings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;

    .line 73
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 142
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 143
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/KeyboardLayoutDialogFragment;->dismiss()V

    .line 144
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 77
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 79
    if-eqz p1, :cond_0

    .line 80
    const-string v0, "inputDeviceIdentifier"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputDeviceIdentifier;

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/KeyboardLayoutDialogFragment;->mInputDeviceIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

    .line 83
    :cond_0
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/KeyboardLayoutDialogFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 84
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/KeyboardLayoutDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 95
    .local v1, "context":Landroid/content/Context;
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 96
    .local v2, "inflater":Landroid/view/LayoutInflater;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0c089d

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0c089e

    new-instance v5, Lcom/flyme/deviceoriginalsettings/inputmethod/KeyboardLayoutDialogFragment$2;

    invoke-direct {v5, p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/KeyboardLayoutDialogFragment$2;-><init>(Lcom/flyme/deviceoriginalsettings/inputmethod/KeyboardLayoutDialogFragment;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/KeyboardLayoutDialogFragment;->mAdapter:Lcom/flyme/deviceoriginalsettings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;

    const/4 v5, -0x1

    new-instance v6, Lcom/flyme/deviceoriginalsettings/inputmethod/KeyboardLayoutDialogFragment$1;

    invoke-direct {v6, p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/KeyboardLayoutDialogFragment$1;-><init>(Lcom/flyme/deviceoriginalsettings/inputmethod/KeyboardLayoutDialogFragment;)V

    invoke-virtual {v3, v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f04003d

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 113
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/KeyboardLayoutDialogFragment;->updateSwitchHintVisibility()V

    .line 114
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    return-object v3
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 3
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Lcom/flyme/deviceoriginalsettings/inputmethod/KeyboardLayoutDialogFragment$Keyboards;",
            ">;"
        }
    .end annotation

    .prologue
    .line 170
    new-instance v0, Lcom/flyme/deviceoriginalsettings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutLoader;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/KeyboardLayoutDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/KeyboardLayoutDialogFragment;->mInputDeviceIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

    invoke-direct {v0, v1, v2}, Lcom/flyme/deviceoriginalsettings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutLoader;-><init>(Landroid/content/Context;Landroid/hardware/input/InputDeviceIdentifier;)V

    return-object v0
.end method

.method public onInputDeviceAdded(I)V
    .locals 0
    .param p1, "deviceId"    # I

    .prologue
    .line 193
    return-void
.end method

.method public onInputDeviceChanged(I)V
    .locals 3
    .param p1, "deviceId"    # I

    .prologue
    .line 197
    iget v0, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/KeyboardLayoutDialogFragment;->mInputDeviceId:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/KeyboardLayoutDialogFragment;->mInputDeviceId:I

    if-ne p1, v0, :cond_0

    .line 198
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/KeyboardLayoutDialogFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 200
    :cond_0
    return-void
.end method

.method public onInputDeviceRemoved(I)V
    .locals 1
    .param p1, "deviceId"    # I

    .prologue
    .line 204
    iget v0, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/KeyboardLayoutDialogFragment;->mInputDeviceId:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/KeyboardLayoutDialogFragment;->mInputDeviceId:I

    if-ne p1, v0, :cond_0

    .line 205
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/KeyboardLayoutDialogFragment;->dismiss()V

    .line 207
    :cond_0
    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/flyme/deviceoriginalsettings/inputmethod/KeyboardLayoutDialogFragment$Keyboards;)V
    .locals 4
    .param p2, "data"    # Lcom/flyme/deviceoriginalsettings/inputmethod/KeyboardLayoutDialogFragment$Keyboards;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/flyme/deviceoriginalsettings/inputmethod/KeyboardLayoutDialogFragment$Keyboards;",
            ">;",
            "Lcom/flyme/deviceoriginalsettings/inputmethod/KeyboardLayoutDialogFragment$Keyboards;",
            ")V"
        }
    .end annotation

    .prologue
    .line 175
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/flyme/deviceoriginalsettings/inputmethod/KeyboardLayoutDialogFragment$Keyboards;>;"
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/KeyboardLayoutDialogFragment;->mAdapter:Lcom/flyme/deviceoriginalsettings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;

    invoke-virtual {v1}, Lcom/flyme/deviceoriginalsettings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;->clear()V

    .line 176
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/KeyboardLayoutDialogFragment;->mAdapter:Lcom/flyme/deviceoriginalsettings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;

    iget-object v2, p2, Lcom/flyme/deviceoriginalsettings/inputmethod/KeyboardLayoutDialogFragment$Keyboards;->keyboardLayouts:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/flyme/deviceoriginalsettings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;->addAll(Ljava/util/Collection;)V

    .line 177
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/KeyboardLayoutDialogFragment;->mAdapter:Lcom/flyme/deviceoriginalsettings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;

    iget v2, p2, Lcom/flyme/deviceoriginalsettings/inputmethod/KeyboardLayoutDialogFragment$Keyboards;->current:I

    invoke-virtual {v1, v2}, Lcom/flyme/deviceoriginalsettings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;->setCheckedItem(I)V

    .line 178
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/KeyboardLayoutDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    .line 179
    .local v0, "dialog":Landroid/app/AlertDialog;
    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iget v2, p2, Lcom/flyme/deviceoriginalsettings/inputmethod/KeyboardLayoutDialogFragment$Keyboards;->current:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 182
    :cond_0
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/KeyboardLayoutDialogFragment;->updateSwitchHintVisibility()V

    .line 183
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 49
    check-cast p2, Lcom/flyme/deviceoriginalsettings/inputmethod/KeyboardLayoutDialogFragment$Keyboards;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/flyme/deviceoriginalsettings/inputmethod/KeyboardLayoutDialogFragment;->onLoadFinished(Landroid/content/Loader;Lcom/flyme/deviceoriginalsettings/inputmethod/KeyboardLayoutDialogFragment$Keyboards;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/flyme/deviceoriginalsettings/inputmethod/KeyboardLayoutDialogFragment$Keyboards;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 187
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/flyme/deviceoriginalsettings/inputmethod/KeyboardLayoutDialogFragment$Keyboards;>;"
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/KeyboardLayoutDialogFragment;->mAdapter:Lcom/flyme/deviceoriginalsettings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;

    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;->clear()V

    .line 188
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/KeyboardLayoutDialogFragment;->updateSwitchHintVisibility()V

    .line 189
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/KeyboardLayoutDialogFragment;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v0, p0}, Landroid/hardware/input/InputManager;->unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V

    .line 135
    const/4 v0, -0x1

    iput v0, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/KeyboardLayoutDialogFragment;->mInputDeviceId:I

    .line 137
    invoke-super {p0}, Landroid/app/DialogFragment;->onPause()V

    .line 138
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 119
    invoke-super {p0}, Landroid/app/DialogFragment;->onResume()V

    .line 121
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/KeyboardLayoutDialogFragment;->mIm:Landroid/hardware/input/InputManager;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    .line 123
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/KeyboardLayoutDialogFragment;->mIm:Landroid/hardware/input/InputManager;

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/KeyboardLayoutDialogFragment;->mInputDeviceIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

    invoke-virtual {v2}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/input/InputManager;->getInputDeviceByDescriptor(Ljava/lang/String;)Landroid/view/InputDevice;

    move-result-object v0

    .line 125
    .local v0, "inputDevice":Landroid/view/InputDevice;
    if-nez v0, :cond_0

    .line 126
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/KeyboardLayoutDialogFragment;->dismiss()V

    .line 130
    :goto_0
    return-void

    .line 129
    :cond_0
    invoke-virtual {v0}, Landroid/view/InputDevice;->getId()I

    move-result v1

    iput v1, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/KeyboardLayoutDialogFragment;->mInputDeviceId:I

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 88
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 89
    const-string v0, "inputDeviceIdentifier"

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/KeyboardLayoutDialogFragment;->mInputDeviceIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 90
    return-void
.end method
