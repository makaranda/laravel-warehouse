<div class="card">
    <div class="card-header">
        <div>
            <h3 class="card-title">
                {{ __('Users') }}
            </h3>
        </div>

        <div class="card-actions">
            <x-action.create route="{{ route('users.create') }}" />
        </div>
    </div>

    <div class="card-body border-bottom py-3">
        <div class="d-flex">
            <div class="text-secondary">
                Show
                <div class="mx-2 d-inline-block">
                    <select wire:model.live="perPage" class="form-select form-select-sm" aria-label="result per page">
                        <option value="5">5</option>
                        <option value="10">10</option>
                        <option value="15">15</option>
                        <option value="25">25</option>
                    </select>
                </div>
                entries
            </div>
            <div class="ms-auto text-secondary">
                Search:
                <div class="ms-2 d-inline-block">
                    <input type="text" wire:model.live="search" class="form-control form-control-sm" aria-label="Search invoice">
                </div>
            </div>
        </div>
    </div>

    <x-spinner.loading-spinner/>

    <div class="table-responsive">
        <table wire:loading.remove class="table table-bordered card-table table-vcenter text-nowrap datatable">
            <thead class="thead-light">
            <tr>
                <th class="align-middle text-center w-1">
                    {{ __('No.') }}
                </th>
                <th scope="col" class="align-middle text-center">
                    <a wire:click.prevent="sortBy('name')" href="#" role="button">
                        {{ __('Name') }}
                        @include('inclues._sort-icon', ['field' => 'name'])
                    </a>
                </th>
                <th scope="col" class="align-middle text-center">
                    <a wire:click.prevent="sortBy('email')" href="#" role="button">
                        {{ __('Email') }}
                        @include('inclues._sort-icon', ['field' => 'email'])
                    </a>
                </th>
                <th scope="col" class="align-middle text-center">
                    <a wire:click.prevent="sortBy('user_type')" href="#" role="button">
                        {{ __('User Type') }}
                        @include('inclues._sort-icon', ['field' => 'user_type'])
                    </a>
                </th>
                <th scope="col" class="align-middle text-center">
                    {{ __('Action') }}
                </th>
            </tr>
            </thead>
            <tbody>
            @forelse ($users as $user)
                @php
                    $getAllUserRoles = \App\Models\UserRoles::where('user_role', $user->user_type)->first();
                @endphp

                <tr>
                    <td class="align-middle text-center">
                        {{ ($users->currentPage() - 1) * $users->perPage() + $loop->iteration }}
                    </td>
                    <td class="align-middle">
                        {{ $user->name }}
                    </td>
                    <td class="align-middle">
                        {{ $user->email }}
                    </td>
                    <td class="align-middle">
                        {{ $getAllUserRoles->role_name }}
                    </td>
                    <td class="align-middle text-center" style="width: 15%">
                        <x-button.show class="btn-icon" route="{{ route('users.show', $user) }}"/>
                        <x-button.edit class="btn-icon" route="{{ route('users.edit', $user) }}"/>
                        <x-button.delete class="btn-icon" route="{{ route('users.destroy', $user) }}"/>
                    </td>
                </tr>
            @empty
                <tr>
                    <td class="align-middle text-center" colspan="8">
                        No results found
                    </td>
                </tr>
            @endforelse
            </tbody>
        </table>
    </div>

    <div class="card-footer d-flex align-items-center">
        <p class="m-0 text-secondary d-none d-sm-block">
            Showing <span>{{ $users->firstItem() }}</span> to <span>{{ $users->lastItem() }}</span> of <span>{{ $users->total() }}</span> entries
        </p>

        <ul class="pagination m-0 ms-auto">
            {{ $users->links() }}
        </ul>
    </div>
</div>
